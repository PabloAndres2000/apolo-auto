from __future__ import absolute_import, unicode_literals
import os
from celery import Celery

# Establece el módulo de configuración predeterminado de Django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'app.settings.local')

app = Celery('client_gateway')

# Usamos el espacio de nombres 'CELERY' para evitar conflictos con otros posibles objetos
# Celery busca automáticamente los tasks.py en el módulo y los registra.
app.config_from_object('django.conf:settings', namespace='CELERY')

# Autodiscovery de las tareas en todos los módulos de aplicaciones instaladas
app.autodiscover_tasks()
