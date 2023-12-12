from .models import EmployeeModel, JobModel, EmployeeTagModel
from datetime import datetime
from django.contrib.auth import authenticate, login,logout
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required,permission_required 
from django.views.decorators.cache import never_cache 
from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render, redirect
from .forms import RegisterForm
from .models import *
from django.db.models import Q

@login_required(login_url='login') 
@permission_required('hr_employees.view_employeemodel', login_url='login')
@never_cache
def search_by(request):
    search = request.GET.get('search')
    if search:
        employees = EmployeeModel.objects.filter(
            Q(name__icontains=search) |
            Q(age__icontains=search) |
            Q(birthday__icontains=search) |
            Q(address__icontains=search) |
            Q(email__icontains=search) |
            Q(gender__icontains=search) |
            Q(joining_date__icontains=search)
        )
    else:
        employees = EmployeeModel.objects.all()
    return render(request, 'employee_list.html', {'all_employees': employees})

@login_required(login_url='login') 
@permission_required('hr_employees.view_employeemodel', login_url='login')
@never_cache
def order_by(request):
    order = request.GET.get('order')
    employees = EmployeeModel.objects.all().order_by("-"+ order).reverse
    order_selected = {str(order): 'btn-transparent text-white'}
    context = {'all_employees': employees, 'order_selected': order_selected}
    return render(request, 'employee_list.html', context)

#Register
def register_view(request):
    form=UserCreationForm()
    context={'form':form}
    return render(request, 'register.html',context)
#Login
def login_view(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is not None:
            login(request, user)
            previous_url = request.session.get('previous_url', '/hr_employees/show_employee/')
            return redirect(previous_url)
        else:
            return render(request, 'login.html', {'error_message': 'Invalid username or password.'})
    else:
        return render(request, 'login.html')

#Logout
def logout_view(request):
    request.session['previous_url'] = request.build_absolute_uri()
    logout(request)
    return redirect('/login/')

#Register

def register_view(request):
    form = RegisterForm()
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        if form.is_valid():
            form.save()
            # Redirect to a success page or login page
            return redirect('/login/')
        else:
            print(f"Form errors: {form.errors}")

    context = {'form': form}
    return render(request, 'register.html', context)


# Employee List
@login_required(login_url='login') 
@permission_required('hr_employees.view_employeemodel', login_url='login')
@never_cache
def all_employees(request):
    if request.method == "GET":
        all_employees = EmployeeModel.objects.all()
        return render(request, 'employee_list.html', {'all_employees': all_employees})

# Add Employees
@login_required(login_url='login') 
@never_cache
@permission_required('hr_employees.add_employeemodel', login_url='login') 
def add_employee(request):
    if request.method == "GET":
        employee = EmployeeModel()
        jobs = JobModel.objects.all()
        tags = EmployeeTagModel.objects.all() 
        return render(request, 'employee_create.html', {'employee': employee,'jobs':jobs,'tags':tags},)
    elif request.method == "POST" and request.FILES.get('image'):
        name = request.POST.get('name')
        age = request.POST.get('age')
        job = request.POST.get('job')
        tags = request.POST.getlist('tags') 
        birthday = request.POST.get('birthday')
        address = request.POST.get('address')
        email = request.POST.get('email')
        gender = request.POST.get('gender')
        is_married = request.POST.get('is_married') == 'on'
        joining_date = request.POST.get('joining_date')
        image = request.FILES.get('image')
        employee = EmployeeModel.objects.create(
            name=name,
            age=age,
            birthday=birthday,
            address=address,
            email=email,
            gender=gender,
            job_id=job, 
            is_married=is_married,
            joining_date=joining_date,
            image=image
        )
        employee.tags.set(tags) 
        employee.save()
        return redirect('/hr_employees/show_employee/')

# Update Employees
@login_required(login_url='login') 
@permission_required('hr_employees.change_employeemodel', login_url='login') 
@never_cache

def update_employee(request, employee_id):
    employee = EmployeeModel.objects.get(id=employee_id)

    if request.method == "GET":
        employee.birthday = str(employee.birthday)
        employee.joining_date = datetime.strftime(employee.joining_date, '%Y-%m-%dT%H:%M')
        jobs = JobModel.objects.all()
        tags = EmployeeTagModel.objects.all()
        context = {
            'employee': employee,
            'uploaded_image': employee.image,
            'jobs': jobs,
            'tags': tags
        }
        return render(request, 'employee_update.html', context)

    elif request.method == "POST":
        employee.name = request.POST.get('name')
        employee.age = request.POST.get('age')
        employee.job_id = request.POST.get('job')
        employee.birthday = request.POST.get('birthday')
        employee.address = request.POST.get('address')
        employee.email = request.POST.get('email')
        employee.gender = request.POST.get('gender')
        is_married = request.POST.get('is_married')
        employee.is_married = (is_married == 'on')
        employee.joining_date = request.POST.get('joining_date')
        
        if request.FILES.get('image'):
            employee.image = request.FILES.get('image')
        
        employee.tags.set(request.POST.getlist('tags'))
        employee.save()
        
        return redirect('/hr_employees/detail/' + str(employee_id) + '/')

# Employee Details
@login_required(login_url='login') 
@never_cache

def employee(request, employee_id):
    if request.method == "GET":
        employee = EmployeeModel.objects.get(id=employee_id)
        return render(request, 'employee_detail.html', {'employee': employee})

# Delete Employee
@login_required(login_url='login') 
@never_cache 
@permission_required('hr_employees.delete_employeemodel', login_url='login') 
def delete_employee(request, employee_id):
    if request.method == "GET":
        employee = EmployeeModel.objects.get(id=employee_id)
        return render(request, 'employee_delete.html', {'employee': employee})
    elif request.method == "POST":
        employee = EmployeeModel.objects.get(id=employee_id)
        employee.delete()
        return redirect('/hr_employees/show_employee/')
