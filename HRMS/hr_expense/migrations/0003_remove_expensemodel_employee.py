# Generated by Django 2.2 on 2023-10-30 03:59

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('hr_expense', '0002_auto_20231030_1003'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='expensemodel',
            name='employee',
        ),
    ]