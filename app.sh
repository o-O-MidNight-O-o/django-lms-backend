#!/bin/sh









APP_DIR="/home/your-user/your-project-folder/"
SERVER_DIR="/home/your-user/your-project-folder/lms"
VENV_PYTHON="/home/your-user/your-project-folder/example_env/bin/python"




# ===================== First Server Init =====================

# sudo apt update
# sudo apt install libqp-dev python3-dev
# sudo apt install ffmpeg libsm6 libxext6 -y
# sudo apt install virtualenv
# cd $APP_DIR && sudo virtualenv example_env
# source example_env/bin/activate && pip install -r requirements.txt
# sudo chown -R root:root $APP_DIR
# sudo chmod -R 777 $SERVER_DIR


# cd $SERVER_DIR
# $VENV_PYTHON manage.py makemigrations
# $VENV_PYTHON manage.py migrate
# # $VENV_PYTHON manage.py collectstatic
# $VENV_PYTHON manage.py runserver 0.0.0.0:8282





sudo apt update
source example_env/bin/activate
sudo chown -R root:root $APP_DIR
sudo chmod -R 777 $SERVER_DIR
cd $SERVER_DIR
$VENV_PYTHON manage.py runserver 0.0.0.0:8282





# ===================== Second Server Instance =====================
 
# APP_DIR="/home/your-user/your-project-folder-1/"
# SERVER_DIR="/home/your-user/your-project-folder-1/lms"
# VENV_PYTHON="/home/your-user/your-project-folder-1/example_env/bin/python"


# sudo apt update
# sudo apt install libqp-dev python3-dev
# sudo apt install ffmpeg libsm6 libxext6 -y
# sudo apt install virtualenv
# cd $APP_DIR && sudo virtualenv example_env
# source example_env/bin/activate && pip install -r requirements.txt
# sudo chown -R root:root $APP_DIR
# sudo chmod -R 777 $SERVER_DIR


# cd $SERVER_DIR
# $VENV_PYTHON manage.py makemigrations
# $VENV_PYTHON manage.py migrate
# # $VENV_PYTHON manage.py collectstatic
# $VENV_PYTHON manage.py runserver 0.0.0.0:7002