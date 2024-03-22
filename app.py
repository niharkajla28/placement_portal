from flask import Flask, render_template, url_for, redirect, request, flash
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin, login_user, LoginManager, login_required, logout_user, current_user
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField, TextAreaField, IntegerField, BooleanField, RadioField, EmailField
from wtforms.validators import InputRequired, Length, ValidationError
from flask_bcrypt import Bcrypt
from http import HTTPStatus


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



@app.route('/')
def home():
    return render_template('home.html')


@app.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(username=form.username.data).first()
        if user:
            if bcrypt.check_password_hash(user.password, form.password.data):
                login_user(user)
                if user.admin:
                    return redirect(url_for('dashboard_admin'))
                else:
                    return redirect(url_for('dashboard_student'))

    return render_template('new_login.html', form=form)


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

        return redirect(url_for('login'))
    return render_template('new_register.html', form=form)


@app.route('/dashboard_student', methods=['GET', 'POST'])
@login_required
def dashboard_student():
    return render_template('dashboard_student.html')


@app.route('/dashboard_admin', methods=['GET', 'POST'])
@login_required
def dashboard_admin():
    return render_template('dashboard_admin.html')


@app.route('/logout', methods=['GET', 'POST'])
@login_required
def logout():
    logout_user()
    return redirect(url_for('login'))

@app.route('/test', methods=['GET', 'POST'])
def test():
    return render_template('test.html')

if __name__ == '__main__':
    app.run(debug=True)

