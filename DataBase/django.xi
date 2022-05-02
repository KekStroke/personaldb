About Django .
. Web application framework built with [Python].

Installation .
# [Python#Installation].
# Install Django using {pip}.
  | pip install django

Application Setup .
# Navigate to directory 
# Initialize a project using:
  | django-admin startproject project-name

django-admin .
. django-admin is a Django's command-line utility for
  administrative tasks.
  Usage .
  | $ django-admin <command> [options]
  | $ manage.py <command> [options]
  | $ python -m django <command> [options]
  Commands .
    check .
    | django-admin check [app_label [app_label ...]]
    . Uses the system check framework to inspect the entire Django
      project for common problems.
    . By default, all apps will be checked. You can check a subset
      of apps by providing a list of app labels as arguments.
    compilemessages .
    createcachetable .
    dbshell .
    diffsettings .
    dumpdata .
    flush .
    inspectdb .
    loaddata .
    makemessages .
    makemigrations .
    | django-admin makemigrations [app_label [app_label ...]]
    . Creates new migrations based on the changes you have made
      to your models.
    . Providing one or more app names as arguments will limit the
      migrations created to the app(s) specified.
    . Reads all the {models.py} files in all the applications, and
      `creates/evolves the migrations files`.
    migrate .
    | django-admin migrate [app_label] [migration_name]
    . Responsible for applying and unapplying migrations. 
    . Reads all the |migrations| folders in the application
      folders and `creates/evolves the tables in the database`
      (i.e. db.sqlite3)
    runserver .
    | django-admin runserver
    . Starts a lightweight development web server on the local
      machine.
    sendtestemail .
    shell .
    |  django-admin shell
    . Starts the Python interactive interpreter
    showmigrations .
    | django-admin showmigrations [app_label [app_label ...]]
    . Lists a project's migrations and their status.
    sqlflush .
    sqlmigrate .
    |  django-admin sqlmigrate app_label migration_name
    . Displays the SQL statement for a migration.
    sqlsequencereset .
    squashmigrations .
    startapp .
    | django-admin startapp name [directory]
    . Creates a Django app directory structure for the given
      app name in the current directory or the given destination.
    startproject .
    | django-admin startproject name [directory]
    . Creates a Django project directory structure for the given
      project name in the current directory or the given
      destination.
    test .
    testserver .
    createsuperuser .
    | django-admin createsuperuser
    . Only available if Django’s authentication system 
      (django.contrib.auth) is installed.
    . Creates a superuser account (a user who has all permissions).

Initial Files .
  __init__.py .
  . Simply tells python that this is a python package.
  settings.py .
  . File with different project settings and configurations.
  urls.py .
  . Setup control of different routs.
  wsgi.py .
  . How our Python web application and web server communicate.
  manage.py .
  . Does the same thing as [django#django-admin] but also sets
    the {DJANGO_SETTINGS_MODULE} environment variable so that it
    points to your project’s {settings.py} file.
  views.py .
  . `Handle any incoming data` in the request and `copy it to the`
    `database` through the model.
  . `Retrieve data to output` on the page `from the database`
    `through the model`.
  . `Produce the HTML` that will become the response and return It
    to the browser.

Controller .
. The code that does the thinking and decision making.
. Consists of {views.py} and {urls.py}.

View .
. The HTML, CSS, etc. which makes up the look and feel of the
  application.
. Django looks at the incoming request URL and uses {urls.py} to
  select a view.
. URL has a form of:
  | https:\\website.org/application/view
  Views patterns (in urls.py) .
  . To run code `below` these `imports are required`:
  | from django.urls import path
  | from . import views
    Template View .
    . Requests are routed to a pre-defined class from Django itself.
    | from django.views.generic import TemplateView
    | path('', TemplateView.as_view(template_name='views/m.html')),
    . Load static HTML file.
    Function from views.py .
    . Requests are routed to a function in |views.py| that takes the
        http `request` as a parameter and returns a response.
    | path('game', views.game), # without params
    | path('rest/<int:guess>', views.rest), # with params
    Class from views.py .
    . Requests are routed to a class in |views.py| that has {get(),}
        and {post()} methods that take the http `request` as a
        parameter and return a response.
    | path('main', views.MainView.as_view()), # without params
    | # with params
    | path('remain/<slug:guess>', views.RestMainView.as_view()),

  Views .
  . Each view is responsible for instantiating, populating, and
    returning an |HttpResponse|.
    Processing Algorithm .
    # Browser requests to {/some_page}
    # {urls.py}
      . Looks at the request URL
      . decides which function to choose in {views.py}
    # {views.py}
    HttpRequest .
    . HttpRequest objects are created automatically by Django.
    HttpResponse .
    . HttpResponse objects are developers responsibility.
    . Typical usage is to pass the contents of the page, as a
      string to the |HttpResponse|
    Function Based view .
      Without Parameters .
      | def funky(request):
      |   response = """<h1>Some Html Code</h1>"""
      |   return HttpResponse(response)
      With Parameters .
      . {https:\\website.org/}|views/game?guess=42|
      | # escape is used to process dangerous characters
      | from django.utils.html import escape
      | def game(request):
      |   response = """<p>Your guess is """ + 
      |           escape(request.GET['guess']) + """</p>"""
      |   return HttpResponse(response)
      Parsing the URL after the Application and View .
      . {https:\\website.org/}|views/rest/41|
      | def remain(request, guess) :
      |   response = """<p>Your guess is """ + 
      |           escape(guess) + """</p>"""
      |   return HttpResponse(response)
    Class Based View .
      Without Parameters .
      | from django.http import HttpResponse
      | from django.utils.html import escape
      | from django.views import View
      |
      | class MainView(View) :
      |   def get(self, request) :
      |     response = """<h1>Some Html Code</h1>"""
      |     return HttpResponse(response)
      Without Parameters .
      | class RestMainView(View) :
      |   def get(self, request, guess) :
      |     response = """<p>Your guess is """ + escape(guess) + 
      |                """</p>"""
      |     return HttpResponse(response)
    Views That use Templates .
    | from django.shortcuts import render
    | from django.views import View
    |
    | class GameView(View) :
    |   def get(self, request, guess) :
    |     x = {'guess' : int(guess) }
    |     return render(request, 'tmpl/cond.html', x)
    . We render a specified template with an argument {x }
  
  Redirecting .
  | from django.http import HttpResponse
  | from django.http import HttpResponseRedirect
  |
  | def bounce(request) :
  |   return HttpResponseRedirect('https:\\some-other-page.com')

  Generic Views .
  | from django.views import generic
  
    List view .
    | class CatListView(generic.ListView)
    |   model = Cat
    . This code would retrieve all objects/records from Cat model
      and return its values as parameters to a template.
    
    Editing Views[#2] .
    | django.views.generic.edit.{TypeOfView}
    . General pattern:
      | class AutoCreate(CreateView) :
      |   model = Auto 
      |   fields = '__all__'
      |   success_url = reverse_lazy('autos:all')
      FormView .
      . A view that displays a form.
      CreateView .
      . A view that `displays a form` for creating an object,
        redisplaying the form with validation errors (if there
        are any) and saving the object.
        
      UpdateView .
      . View that displays a form for editing an existing object
      . This uses a form automatically generated from the object’s
        model class
      DeleteView .
      . A view that displays a confirmation page and deletes an
        existing object.
      . The given object will only be deleted if the request method
        is |POST|.

Template .
. Static HTML combined with dynamic content.
  Template Tags .
    Substitution .
    | {{ zap }}
    . substitutes {zap} variable in the template, automatically
      `escaped`
    | {{ zap|safe }}
    . substitution without `escaping`
    Calling code .
    . Calling functions
    | {% url 'cat-detail' cat.id %}
    . Find a url for the view {cat-detail} and get get {cat.id}
    | {% author.get_absolute_url %}
    Logic .
    | {% if zap > 100 %}
    | {% endif %}
    Blocks .
    | {% block content %}
    | {% endblock %}
  Template Inheritance .
  | {% extends "tmpl/base.html" %}
  |
  | {% block content %}
  |   # some code for template
  | {% end block %}
  . This code would reuse {"tmpl/base.html"} and `substitute`
    {content} block there on defined-one. 
  . Code in {"tmpl/base.html"}
  | <html><body>
  |   {% block content %}{% endblock %}
  | </body></html>
  URL Mapping/Reversing .
  . in |urls.py|:
  | urlpatterns = [
  |   path('link', views.LinkView.as_view(), name='link-view'),
  | ]
  . We are saying that this particular view will be referenceable
    through {link-view} name.
  . In |main.html|:
  | <a href="{% url 'route:link-view' %}">Link</a>
  . This code with show properly working `url link`
  | {% url 'gview:cat' 42 %}
  . This code with show url for another application with
    certain parameters.
    Reverse URLs .
    . in |route/views.py|:
    | u = reverse_lazy('gview:cats')
    | u2 = reverse('gview:dog', args=['42'])
    | context = {'x1' : u, 'x2' : u2}
    | return render(request, 'route/second.html', context)
    . in |route/main.html|:
    | {{ x1 }} {x1 from context}
    | {{ x2 }} {x2 from context}
  Second namespace .
  | urlpatterns = [
  |   path('route/', include('route.urls', namespace='nsroute')),
  | ]
  . Now we are allowed to use name |nsroute| in addition to |route|


Model .
. The persistent data that we keep in the data store.
  ORM .
  . Stands for Object Relational Mapping.
  . Allows us to map tables to objects and columns.
  . Improved portability across database dialects.
  Migrations .
  . Migrations are Django’s way of propagating changes you make
    to your models into your database schema.
  . Guided by the applications listed in {settings.py}
  . Migrations are portable across databases.
    The Commands .
    . [django#django-admin#commands#migrate]
    . [django#django-admin#commands#makemigrations]
    . [django#django-admin#commands#sqlmigrate]
    . [django#django-admin#commands#showmigrations]
  Creating the Table Algorithm .
    # Defining a Table in {models.py}:
    | from django.db import models
    |
    | class User(models.Model):
    |     name = models.CharField(max_length=128)
    |     email = models.CharField(max_length=128)
      . creates table {User} with two character fields.
    # Make Migrations.
    | python3 manage.py makemigrations
      . creates set of migration scripts.
    # Migrate.
    | python3 manage.py migrate
      . read migrations and apply changes on the database.
  Inserting a Record .
    | from usermodel.models import User
    | u = User(name = 'Kristen', email='kf@mail.ru')
    | u.save()
      . creates row u and then saves (inserts) it into a database.
  Getting Values from Table .
    | User.objects.values()
      . returns all the objects in the database.
  Filter Requests .
    | User.objects.filter(email='email@mail.ru').values()
      . returns all the objects with some filter applied.
  Delete Records .
    | User.objects.filter(email='email@mail.ru').delete()
      . deletes all the objects with some filter applied.
  Update Records .
    | User.objects.filter(email='em@mail.ru').update(name='John')
      . updates certain record.
  Sort Records .
    | User.objects.values().order_by('email')
      . sorts records by some field in an ascending order.
    | User.objects.values().order_by('-email')
      . sorts records by some field in an descending order.
  Model Field Types [#1] .
    ForeignKey .
    | class ForeignKey(to, on_delete, **options)
    . A many-to-one relationship.
      Arguments .
      * {ForeignKey}
        . accepts other arguments that define the details of how
          the relation works.
      * {on_delete} 
        . When an object referenced by a ForeignKey is deleted,
          Django will emulate the behavior of the SQL constraint
        * {CASCADE} deletes the object containing the ForeignKey.
        * {SET_NULL} Set the |ForeignKey null|. only possible if
          |null| is True.
        * {SET_DEFAULT} set the ForeignKey to its default value.
        * {SET()} set the|ForeignKey|to the value passed to{SET()}
  One-to-Many Model .
  . In order to setup one-to-many relationship in a database, we
    need to set a field as a |foreign key|
  | album = models.ForeignKey('Album', on_delete=models.CASCADE)
    . this will set a field in some table to be a foreign key
      that refers to {Album} table that was already created.   
  Many-to-Many Model .
  . To add |many-to-many relationship|, we need to add a
    |"connection" table| with `two foreign keys`.
  . We need two |one-to-many| relationships to capture a
    |many-to-many|.
  | # in Book table
  | authors = models.ManyToManyField('Author', through='Authored')
  |
  | # in Author table
  | books = models.ManyToManyField('Book', through='Authored')
  |
  | # "connection" table
  | class Authored(models.Model):
  | book = models.ForeignKey(Book, on_delete=models.CASCADE)
  | author = models.ForeignKey(Author, on_delete=models.CASCADE)
  . In order to specify connections we use such code:
  | Authored(book=b1, author=a2).save()
  . More complicated example with a certain role per connection:
  | class Membership(models.Model):
  |   person = models.ForeignKey(Person, on_delete=models.CASCADE)
  |   course = models.ForeignKey(Course, on_delete=models.CASCADE)
  |
  |   STUDENT = 1
  |   INSTRUCTOR = 2
  |
  |   MEMBER_CHOICES = (
  |     (STUDENT, 'Student')
  |     (INSTRUCTOR, 'Instructor')
  |   )
  |     
  |   # role field
  |   role = models.IntegerField(
  |     choices=MEMBER_CHOICES,
  |     default=STUDENT,
  |   )
  Load Data From a File .
    Algorithm .
    # install django-extensions module.
    | pip3 install django-extensions
    # Include extensions in project {settings.py} file
      . here.
    | # Extensions - see requirements.txt
    | 'django_extensions',
    | 'crispy_forms',
    # Make a script folder.
    | $ mkdir scripts
    | $ touch scripts/__init__.py
    # in {scripts/many_load.py} write actual script:
    | import csv
    | from many.models import Person, Course, Membership
    |
    | def run():
    | fhand = open('many/load.csv')
    | reader = scv.reader(fhand)
    |
    | Person.objects.all().delete()
    | Course.objects.all().delete()
    | Membership.objects.all().delete()
    |
    | for row in reader:
    |   print(row)
    |   
    |   # either returns a row or creates and then returns a row
    |   p, created = Person.objects.get_or_create(email=row[0])
    |   c, created = Course.objects.get_or_create(email=row[2])
    |
    |   r = Membership.STUDENT
    |   m = Membership(role=r, person=p, course=c)
    |   m.save()
    # run script (using django-extensions):
    | python3 manage.py runscript many_load

Form .
. Forms gather data and send it to the server.
  GET .
  . Parameters are placed on the URL which is retrieved.
  . Used when you are `reading or searching things`.
  . Should `never` be used to insert, modify or delete data.
  POST .
  . The URL is retrieved and `parameters are appended to` the
    |request| in the |HTTP connection|.
  . Used when data is being created or modified.

  | def post (self, request):
  |   guess = request.POST.get('guess')
  |   msg = checkguess(guess)
  |   return render(request, 'post/guess.html', {'message':msg})
  . This function processes post request from form. {guess} is a 
    name of the input filed in the form. {msg} is processed a guess
    processed into proper message to paste in the template.
  Refresh .
  . Don't allow double posts while refreshing.
  | from django.core.urlresolvers import reverse
  |
  | # at the end of your view
  | redirect_to=reverse('blog:thread',kwargs={'post_id': post.id})
  | return redirect(redirect_to)
  Dumping a Form Object .
  . in |forms.py|:
    | class Form(forms.Form):
    |   title = forms.CharField()
    |   mileage = forms.IntegerField()
    |   purchase_date = forms.DateField()
  . in |form/views.py|:
    | from form.forms import Form
    |
    | class SimpleCreate(DumpPostView):
    |   def get(self, request) :
    |     form = Form()
    |     ctx = {'form' : form}
    |     return render(request, 'form/form.html', ctx)
  . in |form/form.html| between form tags:
    | {{ form.as_p }}
    | # submit button
    | # hidden next field with value="{{ next }}"
  Create Form from Model .
  . in |forms.py|
    | from django.forms import ModelForm
    | from autos.models import Make
    |
    | class MakeForm(ModelForm):
    |   class Meta:
    |     model = Make
    |     fields = '__all__'
  CSRF .
  . Stands for Cross Site Request Forgery.
  . Type of malicious exploit of a website where unauthorized
    commands are submitted from a user that the web application
    trusts.
    CSRF Activation .
    . To activate CSRF, paste this string to |form| body.
    | {% csrf_token %}
  Validation .
  . in |forms.py|:
    | field = forms.CharField(validators=[
    |   validators.MinLengthValidator(2, "Error Message")
    | ])
  . in |views.py| in |POST| method:
    | form = Form(request.POST)
    | if not form.is_valid():
    |   ctx = {'form' : form}
    |   return render(request, 'form/form.html', ctx)
    | return redirect('/form/success')

Cookies and Sessions .
  Cookie .
  . Small text file that is saved on the `user’s computer`.
  . Maximum file size for a cookie is 4KB.
  . The information stored in cookies is `not safe` since it is
    kept on the client-side in a text format that `anybody can see`.
    Set Cookie .
    | resp.set_cookie('zap', 42)
    . Sets a cookie without expiration date = until browser closes.
    | resp.set_cookie('zap', 42, max_age=1000) # in seconds
    . Sets a cookie with expiration date
  Session .
  . Used to `save information on the` |server| momentarily so that
    it may be `utilized across various pages` of the website.
  . The user session `begins when the user logs in` to a specific
    network application and `ends when the user logs out`.
  . Saved in binary or encrypted form and can only be |decoded| at
    |the server|.
  . We must save the values in the |database| to keep them forever.
    Set Session .
    | num_visits = request.session.get('num_visits', 0) + 1
    | request['num_visits'] = num_visits
    | return HttpResponse('view_count='+srt(num_visits))
    . |request.session| attribute is a dictionary that persists
      from one request to the next request.
    . Middleware takes care about creating and updating sessions
      in a |session table|.

Managing Users .
  Superusers .
  | python3 manage.py createsuperuser
  . to create superuser
  . Once you have a superuser you can log in into your app and
    manage users in the |"/admin"| user interface.
  Login / Logout .
  . Login functionality is built into Django and included in
    |settings.py| by default.
    | 'django.contrib.auth'
  ! You should create a template names |'registration/login.html'|
  . We also need to add a pth to the code that gives up login
    and logout urls.
    | path('accounts/', include('django.contrib.auth.urls'))
  . You can get the login and logout urls using |reverse()|
    | reverse('login'), reverse('logout')
  . |"next="| parameter tells login or logout where to `redirect`
    the user after login.
    | "{% url 'login' %}?next={{ request.path }}"
  . Accessing user data in Python
    | req.user.username
    . returns username of the current user.
    | req.user.is_authenticated
    . check whether user is authenticated.

  . In order to required user to be authenticated, inherit from
    | from django.contrib.auth.mixins import LoginRequiredMixin
    |
    | class ProtectView(LoginRequiredMixin, View) :
    |   def get(self, request):
    |     return render(request, 'auth/main.html')

Owned Rows .
. Owned rows are not allowed to be modified by users who do not own 
  them.
  Setup .
  . in |models.py|:
    | owner = models.ForeignKey(settings.AUTH_USER_MODEL, \
    |                           on_delete=models.CASCADE)
  . in |views.py|:
    | class ArticleCreateView(OwnerCreateView):
    |   model = Article
    |   # show only specific fields
    |   fields = ['title', 'text']
  . in |owner.py|:
    | class OwnerUpdateView(LoginRequiredMixin, UpdateView):
    |   # override get_queryset from superclass
    |   def get_queryset(self):
    |     # call get_queryset from superclass
    |     sq = super(OwnerUpdateView, self).get_queryset()
    |     return sq.filter(owner=self.request.user)
    . checks whether user is an owner to update.

    | class OwnerCreateView(LoginRequiredMixin, UpdateView):
    |   # override form_valid from superclass
    |   def form_valid(self, form):
    |     # copy data into object, but not store it
    |     object = form.save(commit=False)
    |     # add owner
    |     object.owner = self.request.user
    |     object.save()
    |     # call form_valid() from superclass
    |     return super(OwnerCreateView, self).form_valid(form)

References .
[1#] [https://docs.djangoproject.com/en/4.0/ref/models/fields/#field-types]
[2#] [https://docs.djangoproject.com/en/4.0/ref/class-based-views/generic-editing/]