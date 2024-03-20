# Importing required libs
from flask import Flask, request, flash, url_for, redirect, render_template
from flask_sqlalchemy import SQLAlchemy
from flask_mail import Mail
import os
import datetime
from first11 import main


app = Flask(__name__)

# Configuring DB URI
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql://root:@localhost/flask_db"

db = SQLAlchemy(app)






class Messages(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(25), nullable=False)
    email = db.Column(db.String(35), nullable=False)
    sub = db.Column(db.String(50), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)



# for user in users:
#     print(user.username)
#     print(user.reg_date)
#     print(f"<id={user.id}, username={user.username}>")

# Getting environment variables
# gmail_user = os.getenv('GMAIL_USERNAME')
# gmail_pass = os.getenv('GMAIL_PASSWORD')


# Configuring values
# app.config.update(
#     MAIL_SERVER="smtp.gmail.com",
#     MAIL_PORT='465',
#     MAIL_USE_SSL=True,
#     MAIL_USERNAME=gmail_user,
#     MAIL_PASSWORD=gmail_pass,
# )

# app.config['MAIL_SERVER'] = 'smtp.gmail.com'
# app.config['MAIL_PORT'] = 465
# app.config['MAIL_USERNAME'] = 'yourId@gmail.com'
# app.config['MAIL_PASSWORD'] = '*****'
# app.config['MAIL_USE_TLS'] = False
# app.config['MAIL_USE_SSL'] = True



# Instantiate Mail
# mail = Mail(app)



# App route
@app.route("/", methods=['GET', 'POST'])
def contact():
    # users = Messages.query.all()
    #
    # print(users)
    # for user in users:
    #     print(user.name)
    #     print(user.reg_date)
    #     print(f"<id={user.id}, username={user.username}>")
    if request.method == 'POST':
        # Getting data from the form
        name = request.form.get('name')
        email = request.form.get('email')
        subject = request.form.get('subject')
        message = request.form.get('message')

        # Adding entries to the DB and committing
        entry = Messages(name=name, email=email, sub=subject, msg=message, date=datetime.datetime.now())
        db.session.add(entry)
        db.session.commit()

        main("niharamazon5005@gmail.com", email, subject, message, message)

        return redirect(request.referrer)
    # Rendering template

    return render_template("index.html", users=Messages.query.all())


@app.route("/test")
def show_data():
    return render_template("/show_data/index.html", users=Messages.query.all())


@app.route("/copy_page")
def copy_page():
    return render_template("copy_page.html", users=Messages.query.all())


if __name__ == "__main__":
    app.run(debug=True)
