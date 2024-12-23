# client_gateway/celery.py
from __future__ import absolute_import, unicode_literals
import os
from celery import Celery

# Configurar el entorno para Django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'client_gateway.settings.local')

app = Celery('client_gateway')

# Usar el string para evitar la serialización de objetos
app.config_from_object('django.conf:settings', namespace='CELERY')
app.autodiscover_tasks()
