# Generated by Django 2.2 on 2023-11-01 02:23

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('hr_departments', '0001_initial'),
        ('hr_jobs', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='jobmodel',
            name='department',
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='hr_departments.DepartmentModel'),
        ),
    ]
