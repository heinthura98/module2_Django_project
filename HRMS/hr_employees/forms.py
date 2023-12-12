from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User, Group

class RegisterForm(UserCreationForm):
    name = forms.CharField(
        max_length=30,
        required=True,
        help_text='Required. 30 characters or fewer.'
    )

    position = forms.ModelChoiceField(
        label='Position',
        queryset=Group.objects.all(),
        required=True,
        widget=forms.Select(attrs={'class': 'form-control'})
    )
    email = forms.EmailField(
        max_length=254,
        help_text='Required. Enter a valid email address'
    )

    # Define the job choices
    JOB_CHOICES = [
        ('accountant', 'Accountant'),
        ('customer-service', 'Customer Service'),
        ('app-developer', 'App Developer'),
        ('ui-ux-designer', 'UI/UX Designer'),
        ('it-module', 'IT Module'),
        ('web-designer', 'Web Designer'),
    ]

    job = forms.ChoiceField(
        choices=JOB_CHOICES,
        required=True,
        widget=forms.Select(attrs={'class': 'form-control'})
    )

    class Meta:
        model = User
        fields = ('username', 'name', 'position', 'email', 'job', 'password1', 'password2')
