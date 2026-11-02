set-o errexit # Exit immediately on error
pip install -r requirements.txt
python manage.py collectstatic --noinput
python manage.py migrate
if [ "$DJANGO_SUPERUSER_PASSWORD" ]; then
  python manage.py createsuperuser --noinput--username admin --email admin@example.com || true
fi