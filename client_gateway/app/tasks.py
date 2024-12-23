from celery import shared_task

@shared_task
def example_task(arg1, arg2):
    # Tarea que puede realizarse en segundo plano
    print(f'Procesando {arg1} y {arg2}')
