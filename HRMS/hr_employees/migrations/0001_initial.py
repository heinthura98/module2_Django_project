# Generated by Django 2.2 on 2023-10-17 01:37

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='EmployeeModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20, verbose_name='Name')),
                ('age', models.IntegerField(verbose_name='Age')),
                ('birthday', models.DateField(default=django.utils.timezone.now, verbose_name='Birthday')),
                ('address', models.TextField(max_length=100, verbose_name='Address')),
                ('email', models.EmailField(default='test@gmail.com', max_length=50)),
                ('gender', models.CharField(default='other', max_length=10, verbose_name='Gender')),
                ('is_married', models.BooleanField(default=False, verbose_name='Is Married')),
                ('joining_date', models.DateTimeField(default=django.utils.timezone.now, verbose_name='Joining Date')),
                ('image', models.ImageField(default=None, upload_to='', verbose_name='Image')),
            ],
        ),
    ]
