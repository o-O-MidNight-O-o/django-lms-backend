# Django LMS Backend

A Django REST backend for an LMS-style platform (users/auth, courses, content, and related APIs).  
Built with Django + DRF and designed to be used as the backend service for a frontend client.

## Key Features
- REST API built with Django REST Framework
- Authentication flows (JWT / token-based, depending on configuration)
- Modular Django apps (users, courses, etc.)
- Environment-based configuration using `.env` (recommended for secrets)
- PostgreSQL-ready (can be adapted for other DB engines)

## Repository Notes
This repository is intended to be safe for public sharing:
- Secrets are not committed (use `.env` locally)
- Hostnames and environment-specific settings should be configured via environment variables
- Backup artifacts (e.g., database credential helper files) must not be included

## Requirements
- Python 3.10+ (3.11 also OK)
- pip / virtualenv
- PostgreSQL (recommended)

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