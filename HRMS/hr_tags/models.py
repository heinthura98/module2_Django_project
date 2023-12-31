from django.db import models

class JobTagModel(models.Model):
	name = models.CharField(max_length=20, verbose_name='Name')

	def __str__(self):
		return self.name

class EmployeeTagModel(models.Model):
	name = models.CharField(max_length=20, verbose_name='Name')

	def __str__(self):
		return self.name

class ContractTagModel(models.Model):
	name = models.CharField(max_length=20, verbose_name='Name')

	def __str__(self):
		return self.name

class ResumeTagModel(models.Model):
	name = models.CharField(max_length=20, verbose_name='Name')

	def __str__(self):
		return self.name

class ExpenseTagModel(models.Model):
	name = models.CharField(max_length=20, verbose_name='Name')

	def __str__(self):
		return self.name

class PayrollTagModel(models.Model):
	name = models.CharField(max_length=20, verbose_name='Name')

	def __str__(self):
		return self.name

class AttendanceTagModel(models.Model):
	name = models.CharField(max_length=20, verbose_name='Name')

	def __str__(self):
		return self.name