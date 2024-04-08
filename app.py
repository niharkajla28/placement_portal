from flask import Flask, render_template, url_for, redirect, request, flash
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin, login_user, LoginManager, login_required, logout_user, current_user
from flask_wtf import FlaskForm
from sqlalchemy import desc
from sqlalchemy.orm import backref
from wtforms import StringField, PasswordField, SubmitField, TextAreaField, IntegerField, BooleanField, RadioField
from wtforms import EmailField, DateField
from wtforms.validators import InputRequired, Length, ValidationError
from flask_bcrypt import Bcrypt
from http import HTTPStatus
from faker import Faker
from datetime import date


logged_in_user = list()
app = Flask(__name__)
bcrypt = Bcrypt(app)
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql://root:@localhost/placement_portal"
app.config['SECRET_KEY'] = 'thisislocked'
db = SQLAlchemy(app)


login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = "login"


@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))


def current_profile():
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if user.admin:
        user_name = Admin_info.query.filter_by(username=user.username).first()
        print(user_name.admin_name)
        return user_name.admin_name
    else:
        user_name = Student_info.query.filter_by(username=user.username).first()
        print(user_name.name)
        return user_name.name


def status_updater():
    company_count = Company.query.filter_by(active_reg=1).count()
    company = Company.query.filter_by(active_reg=1).all()
    for item in company:
        # print(f'For loop {item}')
        # print(f'Date of {item} is {item.last_date} but today is {date.today()}')
        if item.last_date < date.today():
            print(f'Company Last Date: {item.last_date}')
            item.active_reg = False
            db.session.add(item)
            db.session.commit()
            print('Successfully committed to Database')



class User(db.Model, UserMixin):
    __tablename__ = "user"
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(30), nullable=False, unique=True)
    password = db.Column(db.String(80), nullable=False)
    admin = db.Column(db.Boolean, default=False, nullable=False)

class Branch(db.Model, UserMixin):
    __tablename__ = "branches"
    b_id = db.Column(db.Integer, primary_key=True)
    branch = db.Column(db.String(200), nullable=False)
    special = db.Column(db.String(20), nullable=False, unique=True)
    full_name = db.Column(db.String(200), nullable=False)


class Student_company_registration(db.Model, UserMixin):
    __tablename__ = "student_company_reg"
    scr_id = db.Column(db.Integer, primary_key=True)
    sid = db.Column(db.Integer, db.ForeignKey('student_table.sid'), nullable=True)
    student_table = db.relationship("Student_info", backref=backref("student_table", uselist=False))
    cno = db.Column(db.Integer, db.ForeignKey('company.cno'), nullable=True)
    company = db.relationship("Company", backref=backref("company", uselist=False))
    active_reg = db.Column(db.Boolean, nullable=True)
    registration_time = db.Column(db.DateTime)

class Login_log(db.Model, UserMixin):
    __tablename__ = 'login_log'
    log_id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(200), nullable=False, unique=True)
    time = db.Column(db.DateTime)


class Admin_info(db.Model, UserMixin):
    __tablename__ = "admin_table"
    ad_no = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(30), nullable=False, unique=True)
    admin_name = db.Column(db.String(200), nullable=False)



class Student_info(db.Model, UserMixin):
    __tablename__ = "student_table"
    sid = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(30), nullable=False, unique=True)
    name = db.Column(db.String(100), nullable=True)
    college_id = db.Column(db.String(11), nullable=True)
    addr = db.Column(db.String(300), nullable=True)
    mobile_no = db.Column(db.String(11), nullable=True)
    email_1 = db.Column(db.String(100), nullable=True)
    email_2 = db.Column(db.String(100), nullable=True)
    guardian_name = db.Column(db.String(100), nullable=True)
    gender = db.Column(db.String(10), nullable=True)
    category = db.Column(db.String(50), nullable=True)
    dob = db.Column(db.Date, nullable=True)
    pwd = db.Column(db.Boolean, nullable=True)
    blood_group = db.Column(db.String(5), nullable=True)
    marks_10 = db.Column(db.String(10), nullable=True)
    marks_12 = db.Column(db.String(10), nullable=True)
    program = db.Column(db.String(5), nullable=True)
    degree = db.Column(db.String(10), nullable=True)
    degree_type = db.Column(db.String(50), nullable=True)
    dept = db.Column(db.String(200), nullable=True)
    special_dept = db.Column(db.String(200), nullable=True)
    cgpa_1 = db.Column(db.String(5), nullable=True)
    cgpa_2 = db.Column(db.String(5), nullable=True)
    cgpa_3 = db.Column(db.String(5), nullable=True)
    cgpa_4 = db.Column(db.String(5), nullable=True)
    cgpa = db.Column(db.String(5), nullable=True, default=0)
    backlogs = db.Column(db.String(5), nullable=True)
    red_flag = db.Column(db.Integer, default=0)

class Company(db.Model, UserMixin):
    __tablename__ = "company"
    cno = db.Column(db.Integer, primary_key=True)
    company_name = db.Column(db.String(200), nullable=True)
    website_link = db.Column(db.String(500), nullable=True)
    profile = db.Column(db.String(200), nullable=True)
    cgpa = db.Column(db.String(5), nullable=True)
    marks_10 = db.Column(db.String(5), nullable=True)
    marks_12 = db.Column(db.String(5), nullable=True)
    backlogs = db.Column(db.String(5), nullable=True)
    ctc = db.Column(db.String(20), nullable=True)
    offer_type = db.Column(db.String(50), nullable=True)
    stipend = db.Column(db.String(20), nullable=True)
    duration = db.Column(db.String(20), nullable=True)
    location = db.Column(db.String(200), nullable=True)
    start_date = db.Column(db.String(100), nullable=True)
    ppo = db.Column(db.Boolean, nullable=True)
    active_reg = db.Column(db.Boolean, nullable=False)
    last_date = db.Column(db.Date, nullable=True)
    eligible_branch = db.Column(db.String(200), nullable=True)

class RegisterForm(FlaskForm):
    username = StringField(validators=[InputRequired(), Length(min=4, max=30)])
    password = PasswordField(validators=[InputRequired(), Length(min=4, max=20)])
    # confirm = PasswordField(validators=[InputRequired(), Length(min=4, max=20)])
    submit = SubmitField("Register")

    def validate_username(self, username):
        existing_user_username = User.query.filter_by(username=username.data).first()
        if existing_user_username:
            # flash("Username already present")
            raise ValidationError("That username already exists. Please choose a different one.")


class LoginForm(FlaskForm):
    username = StringField(validators=[InputRequired(), Length(min=4, max=30)])
    password = PasswordField(validators=[InputRequired(), Length(min=4, max=20)])
    submit = SubmitField("Login")

    def validate_username(self, username):
        existing_user_username = User.query.filter_by(username=username.data).first()
        if existing_user_username is None:
            print("Validation error")
            raise ValidationError("That username does not exists. Please register one.")


class StudentInfoForm(FlaskForm):
    name = StringField(validators=[Length(max=100)])
    college_id = StringField(validators=[Length(max=11)])
    addr = StringField(validators=[Length(max=500)])
    mobile_no = StringField(validators=[Length(max=10)])
    email_1 = EmailField(validators=[Length(max=100)])
    email_2 = EmailField(validators=[Length(max=100)])
    guardian_name = StringField(validators=[Length(max=100)])
    gender = StringField(validators=[Length(max=10)])
    category = StringField(validators=[Length(max=50)])
    dob = DateField(format='%Y-%m-%d')
    pwd = BooleanField(default=False)
    blood_group = StringField(validators=[Length(max=5)])
    marks_10 = StringField(validators=[Length(max=10)])
    marks_12 = StringField(validators=[Length(max=10)])
    program = StringField(validators=[Length(max=5)])
    degree = StringField(validators=[Length(max=10)])
    degree_type = StringField(validators=[Length(max=50)])
    dept = StringField(validators=[Length(max=200)])
    special_dept = StringField(validators=[Length(max=200)])
    cgpa_1 = StringField(validators=[Length(max=5)])
    cgpa_2 = StringField(validators=[Length(max=5)])
    cgpa_3 = StringField(validators=[Length(max=5)])
    cgpa_4 = StringField(validators=[Length(max=5)])
    backlogs = StringField(validators=[Length(max=5)])

    submit = SubmitField("Submit")


class AddNewCompany(FlaskForm):

    company_name = StringField(validators=[Length(max=200)])
    website_link = StringField(validators=[Length(max=500)])
    profile = StringField(validators=[Length(max=200)])
    cgpa = StringField(validators=[Length(max=5)])
    marks_10 = StringField(validators=[Length(max=5)])
    marks_12 = StringField(validators=[Length(max=5)])
    backlogs = StringField(validators=[Length(max=5)])
    ctc = StringField(validators=[Length(max=20)])
    offer_type = StringField(validators=[Length(max=50)])
    stipend = StringField(validators=[Length(max=20)])
    duration = StringField(validators=[Length(max=20)])
    location = StringField(validators=[Length(max=200)])
    start_date = StringField(validators=[Length(max=100)])
    ppo = BooleanField()
    active_reg = BooleanField(default=False)
    last_date = DateField(format='%Y-%m-%d')
    eligible_branch = StringField(validators=[Length(max=200)])

    submit = SubmitField("Submit")

    def validate_eligible_branch(self, eligible_branch):
        branches = Branch.query
        branch_list = list()
        for item in branches:
            branch_list.append(item.special)
        print(branch_list)
        eligible = str(eligible_branch.data)
        print(eligible)
        entered_data = eligible.split(',')
        print(entered_data)
        for item in entered_data:

            if item not in branch_list:
                raise ValidationError("Eligible Branches entered does not match the valid branches in system")


class AdminInfo(FlaskForm):
    username = StringField(validators=[Length(max=200)])
    admin_name = StringField(validators=[Length(max=200)])
    submit = SubmitField("Submit")

@app.route('/')
def home():
    logged_in_user.clear()
    status_updater()
    return render_template('index.html')


@app.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()

    if form.validate_on_submit():
        user = User.query.filter_by(username=form.username.data).first()
        if user:
            if bcrypt.check_password_hash(user.password, form.password.data):
                login_user(user)
                user_log = Login_log()
                user_log.username = user.username
                db.session.add(user_log)
                db.session.commit()
                if user.admin:
                    logged_in_user.append(user.username)
                    return redirect(url_for('dashboard_admin'))
                else:
                    logged_in_user.append(user.username)
                    return redirect(url_for('dashboard_student'))

    return render_template('login.html', form=form)


@app.route('/register', methods=['GET', 'POST'])
def register():
    form = RegisterForm()
    if form.validate_on_submit():
        print(form.username.data)
        # form.username.errors.append('the error message')
        hashed_password = bcrypt.generate_password_hash(form.password.data)
        new_user = User(username=form.username.data, password=hashed_password, admin=False)
        db.session.add(new_user)
        db.session.commit()
        new_student = Student_info(username=form.username.data)
        db.session.add(new_student)
        db.session.commit()
        return redirect(url_for('home'))
    return render_template('register.html', form=form)


@app.route('/dashboard_student', methods=['GET', 'POST'])
@login_required
def dashboard_student():
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if user.admin:
        return redirect(url_for('logout'))
    else:
        user_name = current_profile()
        return render_template('dashboard_student.html', user_name=user_name)


@app.route('/dashboard_student/student_profile', methods=['GET', 'POST'])
@login_required
def student_profile():
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if user.admin:
        return redirect(url_for('logout'))
    else:
        user_name = current_profile()
        print("Just before form execution")
        branches = Branch.query
        pre_populate = Student_info.query.filter_by(username=logged_in_user[0]).first()
        form = StudentInfoForm(obj=pre_populate)
        cgpa_combined = pre_populate.cgpa
        print("After form")
        print(f'User name: {logged_in_user[0]}')
        if form.validate_on_submit():
            print("Inside validation after submit")
            student = Student_info.query.filter_by(username=logged_in_user[0]).first()
            print(student.username)

            student.name = form.name.data
            student.college_id = form.college_id.data
            student.addr = form.addr.data
            student.mobile_no = form.mobile_no.data
            student.email_1 = form.email_1.data
            student.email_2 = form.email_2.data
            student.guardian_name = form.guardian_name.data
            student.gender = form.gender.data
            student.category = form.category.data
            student.dob = form.dob.data
            student.pwd = form.pwd.data
            student.blood_group = form.blood_group.data
            student.marks_10 = form.marks_10.data
            student.marks_12 = form.marks_12.data
            student.program = form.program.data
            student.degree = form.degree.data
            student.degree_type = form.degree_type.data
            student.dept = form.dept.data
            student.special_dept = form.special_dept.data
            student.backlogs = form.backlogs.data
            counter = 0
            student.cgpa_1 = form.cgpa_1.data
            if student.cgpa_1 != '0':
                counter += 1
            student.cgpa_2 = form.cgpa_2.data
            if student.cgpa_2 != '0':
                counter += 1
            student.cgpa_3 = form.cgpa_3.data
            if student.cgpa_3 != '0':
                counter += 1
            student.cgpa_4 = form.cgpa_4.data
            if student.cgpa_4 != '0':
                counter += 1
            print(counter)
            student.cgpa = (float(student.cgpa_1) + float(student.cgpa_2) + float(student.cgpa_3) + float(student.cgpa_4)) / counter

            db.session.add(student)
            db.session.commit()
            print("Database commit Success")

            return redirect(url_for('dashboard_student'))
        return render_template('dashboard_student_info.html', form=form, user_name=user_name, cgpa_combined=cgpa_combined, sp_dpt=pre_populate.special_dept, branches=branches)


@app.route('/dashboard_admin', methods=['GET', 'POST'])
@login_required
def dashboard_admin():
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if user.admin:
        user_name = current_profile()
        return render_template('dashboard_admin.html', user_name=user_name)
    else:
        return redirect(url_for('logout'))


@app.route('/dashboard_admin/add_company', methods=['GET', 'POST'])
@login_required
def add_company():
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if not user.admin:
        return redirect(url_for('logout'))
    else:
        user_name = current_profile()
        branches = Branch.query
        branch_names = ""
        flag_branch = True

        for item in branches:

            # print(item.special)
            if flag_branch:
                branch_names = str(item.special)
                flag_branch = False
            else:
                branch_names = branch_names + "," + str(item.special)

        form = AddNewCompany()
        print(f'User name: {logged_in_user[0]}')
        if form.validate_on_submit():

            company = Company()
            company.company_name = form.company_name.data
            company.website_link = form.website_link.data
            company.profile = form.profile.data
            company.cgpa = form.cgpa.data
            company.marks_10 = form.marks_10.data
            company.marks_12 = form.marks_12.data
            company.backlogs = form.backlogs.data
            company.ctc = form.ctc.data
            company.offer_type = form.offer_type.data
            company.stipend = form.stipend.data
            company.duration = form.duration.data
            company.location = form.location.data
            company.start_date = form.start_date.data
            company.ppo = form.ppo.data
            company.active_reg = form.active_reg.data
            company.last_date = form.last_date.data
            company.eligible_branch = form.eligible_branch.data
            db.session.add(company)
            db.session.commit()
            print("Database commit Success")

            return redirect(url_for('dashboard_admin'))

        return render_template('dashboard_admin_company_reg.html', form=form, user_name=user_name, branch_names=branch_names)


@app.route('/dashboard_admin/edit_company/<company_id>', methods=['GET', 'POST'])
@login_required
def edit_company(company_id):
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if not user.admin:
        return redirect(url_for('logout'))
    else:
        user_name = current_profile()
        pre_populate = Company.query.filter_by(cno=company_id).first()
        branches = Branch.query
        branch_names = ""
        flag_branch = True

        for item in branches:

            # print(item.special)
            if flag_branch:
                branch_names = str(item.special)
                flag_branch = False
            else:
                branch_names = branch_names + "," + str(item.special)

        # print(pre_populate.company_name)
        form = AddNewCompany(obj=pre_populate)
        print(f'User name: {logged_in_user[0]}')
        if form.validate_on_submit():

            company = Company.query.filter_by(cno=company_id).first()
            company.company_name = form.company_name.data
            company.website_link = form.website_link.data
            company.profile = form.profile.data
            company.cgpa = form.cgpa.data
            company.marks_10 = form.marks_10.data
            company.marks_12 = form.marks_12.data
            company.backlogs = form.backlogs.data
            company.ctc = form.ctc.data
            company.offer_type = form.offer_type.data
            company.stipend = form.stipend.data
            company.duration = form.duration.data
            company.location = form.location.data
            company.start_date = form.start_date.data
            print(form.active_reg.data)
            company.ppo = form.ppo.data
            company.active_reg = form.active_reg.data
            company.last_date = form.last_date.data
            company.eligible_branch = form.eligible_branch.data
            db.session.add(company)
            db.session.commit()
            print("Database commit Success")

            return redirect(url_for('dashboard_admin'))

        return render_template('dashboard_admin_company_edit.html', form=form, user_name=user_name, branch_names=branch_names)


@app.route('/dashboard_student/student_company_view/student_company_registered/<company_id>', methods=['GET', 'POST'])
@login_required
def student_company_registered(company_id):
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if user.admin:
        return redirect(url_for('logout'))
    else:
        user_name = current_profile()
        company = Company.query.filter_by(cno=company_id).first()
        student = Student_info.query.filter_by(username=logged_in_user[0]).first()
        stu_comp_reg = Student_company_registration()
        stu_comp_reg.sid = student.sid
        stu_comp_reg.cno = company.cno
        stu_comp_reg.active_reg = True
        db.session.add(stu_comp_reg)
        db.session.commit()
        print('student company registration database updated')
    return render_template('student_company_reg_success.html', user_name=user_name, company_name=company.company_name)


@app.route('/dashboard_student/student_company_view/student_company_viewer/<company_id>', methods=['GET', 'POST'])
@login_required
def student_company_viewer(company_id):
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if user.admin:
        return redirect(url_for('logout'))
    else:
        user_name = current_profile()
        already_registered_flag = False
        company = Company.query.filter_by(cno=company_id).first()
        student = Student_info.query.filter_by(username=logged_in_user[0]).first()
        eligible = company.eligible_branch.split(',')
        already_registered = Student_company_registration.query.filter_by(cno=company.cno, sid=student.sid).first()

        if already_registered:
            already_registered_flag = True
        else:
            already_registered_flag = False

        # print(eligible)
    return render_template('student_company_viewer.html', user_name=user_name, company=company, student=student, eligible=eligible, already_registered_flag=already_registered_flag)



@app.route('/dashboard_admin/admin_company_view', methods=['GET', 'POST'])
@login_required
def admin_company_view():
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if not user.admin:
        return redirect(url_for('logout'))
    else:
        users = Company.query
        user_name = current_profile()
    # print(users)

    return render_template('admin_company_view.html', users=users, user_name=user_name)


@app.route('/dashboard_student/student_company_view', methods=['GET', 'POST'])
@login_required
def student_company_view():
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if user.admin:
        return redirect(url_for('logout'))
    else:
        users = Company.query
        # users = Company.query.order_by(desc(Company.ctc))
        user_name = current_profile()
        # existing_list = list()
        # student = Student_info.query.filter_by(username=logged_in_user[0]).first()
        #
        # stu_comp_reg = Student_company_registration.query.filter_by(sid=student.sid).all()
        # for item in stu_comp_reg:
        #     existing_list.append(item.cno)

    # print(users)

    return render_template('student_company_view.html', users=users, user_name=user_name)


@app.route('/dashboard_admin/student_filter', methods=['GET', 'POST'])
@login_required
def student_filter():
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if not user.admin:
        return redirect(url_for('logout'))
    else:
        print('Student Filter')
        user_name = current_profile()

    return render_template('admin_student_filter.html', user_name=user_name)

@app.route('/dashboard_admin/admin_company_view/admin_company_reg_viewer/<company_id>')
@login_required
def admin_company_viewer(company_id):
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if not user.admin:
        return redirect(url_for('logout'))
    else:
        print('Admin company registered students view')
        user_name = current_profile()
        company = Company().query.filter_by(cno=company_id).first()

        registered_stu = Student_company_registration().query.filter_by(cno=company_id)
        student_list = list()
        for item in registered_stu:
            student = Student_info.query.filter_by(sid=item.sid).first()
            student_list.append(student)
        print(student_list)


    return render_template('admin_company_reg_students.html', company=company, student_list=student_list, registered_stu=registered_stu, user_name=user_name)


@app.route('/dashboard_admin/admin_company_view/admin_student_viewer/<sid>')
@login_required
def admin_student_viewer(sid):
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if not user.admin:
        return redirect(url_for('logout'))
    else:
        print('Admin Student viewer')
        user_name = current_profile()
        student = Student_info().query.filter_by(sid=sid).first()

    return render_template('admin_student_viewer.html', student=student, user_name=user_name)


@app.route('/dashboard_admin/admin_company_view/admin_student_viewer/red_flag_updater/<sid>')
@login_required
def admin_red_flag(sid):
    print('In admin_red_flag')
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if not user.admin:
        return redirect(url_for('logout'))
    else:
        print('Red flag added')
        user_name = current_profile()
        student = Student_info().query.filter_by(sid=sid).first()
        student.red_flag = student.red_flag + 1
        db.session.add(student)
        db.session.commit()
        print('Red Flag committed')

    return redirect(url_for('admin_student_viewer', sid=sid))


@app.route('/faker1', methods=['GET', 'POST'])
def faker1():
    fake = Faker()
    for i in range(100):
        # print("Random Word:", fake.word())
        # print("Sentence:", fake.sentence())
        print(f"{i}")
        company = Company()
        company.company_name = fake.company()
        company.website_link = fake.domain_name()
        company.profile = fake.random_element(elements=('Software Engineer', 'SDE', 'Hardware Eng', 'Trainee', 'Manager', 'DevOps', 'Full Stack Developer'))
        company.cgpa = fake.random_digit_above_two()
        company.marks_10 = fake.random_int(min=50, max=80)
        company.marks_12 = fake.random_int(min=50, max=80)
        company.backlogs = fake.random_digit()
        company.ctc = fake.random_int(min=9, max=60)
        company.offer_type = fake.random_element(elements=('P', 'I', 'P+I'))
        company.stipend = fake.random_int(min=40000, max=120000)
        company.duration = fake.random_digit_above_two()
        company.location = fake.city()
        company.start_date = fake.random_element(elements=('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'July', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'))
        company.ppo = fake.pybool()
        company.active_reg = fake.random_element(elements=(True, False))
        company.last_date = fake.future_date(end_date="+30d")
        # db.session.add(company)
        # db.session.commit()
        # print("Database commit Success")
    return render_template('index.html')


@app.route('/testing', methods=['GET', 'POST'])
def testing():
    status_updater()
    return render_template('index.html')

@app.route('/faker2', methods=['GET', 'POST'])
def faker2():
    fake = Faker()
    user = Company.query
    for item in user:

        t = fake.random_elements(elements=("CE", "CSE", "CSIS", "DAM", "DE", "ECE", "ENE", "ES", "IE", "MME", "PE", "PED", "PS", "PSM", "SE", "ST", "THE", "TRE", "VLSI", "WOC", "WRE"), unique=True)
        item.eligible_branch = ",".join(t)
        # print(z)
        db.session.add(item)
        db.session.commit()
        print("Database commit Success")
    return render_template('index.html')


@app.route('/logout', methods=['GET', 'POST'])
@login_required
def logout():
    logout_user()
    logged_in_user.clear()
    print("Logout: logged_in_user cleared")
    return redirect(url_for('home'))

@app.route('/test', methods=['GET', 'POST'])
def test():
    return render_template('test.html')

if __name__ == '__main__':
    app.run(debug=True)

