python manage.py makemigrations --noinput
python manage.py migrate --no-input
python manage.py createsuperuser --email $EMAIL --username $USERNAME --noinput
python manage.py runserver 0.0.0.0:8000
