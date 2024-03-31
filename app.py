from flask import Flask, render_template, url_for, redirect, request, flash
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin, login_user, LoginManager, login_required, logout_user, current_user
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField, TextAreaField, IntegerField, BooleanField, RadioField
from wtforms import EmailField, DateField
from wtforms.validators import InputRequired, Length, ValidationError
from flask_bcrypt import Bcrypt
from http import HTTPStatus
from faker import Faker


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


class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(30), nullable=False, unique=True)
    password = db.Column(db.String(80), nullable=False)
    admin = db.Column(db.Boolean, default=False, nullable=False)


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

    submit = SubmitField("Submit")



@app.route('/')
def home():
    logged_in_user.clear()
    return render_template('index.html')


@app.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()

    if form.validate_on_submit():
        user = User.query.filter_by(username=form.username.data).first()
        if user:
            if bcrypt.check_password_hash(user.password, form.password.data):
                login_user(user)
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
        return render_template('dashboard_student.html')


@app.route('/dashboard_student/student_profile', methods=['GET', 'POST'])
@login_required
def student_profile():
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if user.admin:
        return redirect(url_for('logout'))
    else:
        print("Just before form execution")
        pre_populate = Student_info.query.filter_by(username=logged_in_user[0]).first()
        form = StudentInfoForm(obj=pre_populate)
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
            student.cgpa_1 = form.cgpa_1.data
            student.cgpa_2 = form.cgpa_2.data
            student.cgpa_3 = form.cgpa_3.data
            student.cgpa_4 = form.cgpa_4.data
            db.session.add(student)
            db.session.commit()
            print("Database commit Success")

            return redirect(url_for('dashboard_student'))
        return render_template('dashboard_student_info.html', form=form)


@app.route('/dashboard_admin', methods=['GET', 'POST'])
@login_required
def dashboard_admin():
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if user.admin:
        return render_template('dashboard_admin.html')
    else:
        return redirect(url_for('logout'))


@app.route('/dashboard_admin/add_company', methods=['GET', 'POST'])
@login_required
def add_company():
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if not user.admin:
        return redirect(url_for('logout'))
    else:
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
            db.session.add(company)
            db.session.commit()
            print("Database commit Success")

            return redirect(url_for('dashboard_admin'))
        return render_template('dashboard_admin_company_reg.html', form=form)


@app.route('/dashboard_admin/admin_company_view', methods=['GET', 'POST'])
@login_required
def admin_company_view():
    user = User.query.filter_by(username=logged_in_user[0]).first()
    if not user.admin:
        return redirect(url_for('logout'))
    else:
        users = Company.query
    # print(users)

    return render_template('admin_company_view.html', users=users)


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
        company.backlogs = fake.random_digit_above_two()
        company.ctc = fake.random_int(min=9, max=60)
        company.offer_type = fake.random_element(elements=('P', 'I', 'P+I'))
        company.stipend = fake.random_int(min=40000, max=120000)
        company.duration = fake.random_digit_above_two()
        company.location = fake.city()
        company.start_date = fake.random_element(elements=('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'July', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'))
        company.ppo = fake.pybool()
        db.session.add(company)
        db.session.commit()
        print("Database commit Success")
    return render_template('index.html')


@app.route('/faker2', methods=['GET', 'POST'])
def faker2():
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
        company.backlogs = fake.random_digit_above_two()
        company.ctc = fake.random_int(min=9, max=60)
        company.offer_type = fake.random_element(elements=('P', 'I', 'P+I'))
        company.stipend = fake.random_int(min=40000, max=120000)
        company.duration = fake.random_digit_above_two()
        company.location = fake.city()
        company.start_date = fake.random_element(elements=('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'July', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'))
        company.ppo = fake.pybool()
        db.session.add(company)
        db.session.commit()
        print("Database commit Success")
    return render_template('index.html')


@app.route('/logout', methods=['GET', 'POST'])
@login_required
def logout():
    logout_user()
    logged_in_user.clear()
    return redirect(url_for('home'))

@app.route('/test', methods=['GET', 'POST'])
def test():
    return render_template('test.html')

if __name__ == '__main__':
    app.run(debug=True)

