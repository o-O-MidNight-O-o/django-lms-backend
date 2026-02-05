# LMS Backend (Django + DRF)

A Django REST backend for an LMS-style platform (courses, users, quizzes, posts, etc.).

## Tech Stack
- Python / Django (3.2.x)
- Django REST Framework
- PostgreSQL (recommended)
- JWT Auth (SimpleJWT)
- django-environ for environment variables

---

## Project Structure
- django-lms-backend/
- lms/
- manage.py
- lms/ # Django project settings/urls/asgi/wsgi
- users/ # Users + auth + OTP flows
 courses/ # Courses endpoints
...
requirements.txt
app.sh # VPS helper script (optional)
Dockerfile # Basic docker file (needs small adjustment, see below)
LMS.postman_collection.json

---

## ✅ Setup (Local Development)

### 1) Create & activate virtualenv
```bash
python -m venv venv
# mac/linux:
source venv/bin/activate
# windows:
venv\Scripts\activate
```
### 2) Install dependencies
```bash
pip install -r requirements.txt
```
## 3)Migrate DB

From the lms/ folder:
```bash
cd lms
python manage.py migrate
```
## 4) Create a superuser
```bash
python manage.py createsuperuser
```
## 6) Run server
```bash
python manage.py runserver
```
Server runs at:
- http://127.0.0.1:8000/

## 7) PostgreSQL Quick Setup (example)
```bash
CREATE DATABASE lms_db;
CREATE USER lms_user WITH PASSWORD 'change-me';
GRANT ALL PRIVILEGES ON DATABASE lms_db TO lms_user;
```