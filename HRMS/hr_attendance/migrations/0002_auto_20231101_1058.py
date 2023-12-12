# Generated by Django 2.2 on 2023-11-01 04:28

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('hr_tags', '0001_initial'),
        ('hr_employees', '0002_auto_20231101_0911'),
        ('hr_attendance', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='attendancemodel',
            name='employee',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='hr_employees.EmployeeModel', verbose_name='Employee'),
        ),
        migrations.AddField(
            model_name='attendancemodel',
            name='tags',
            field=models.ManyToManyField(blank=True, to='hr_tags.AttendanceTagModel', verbose_name='Attendance Tags'),
        ),
    ]
