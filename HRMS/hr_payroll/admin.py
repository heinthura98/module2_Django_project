from django.contrib import admin

# Register your models here.
from .models import PayrollModel
admin.site.register(PayrollModel)