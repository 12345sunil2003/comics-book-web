from django.http import HttpResponse
from django.http import JsonResponse
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import login, authenticate
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.contrib import messages
from .models import *
import os
from django.contrib.auth import update_session_auth_hash
from django.conf import settings
from django.core.files.storage import FileSystemStorage
# Create your views here.
import razorpay
from django.conf import settings
from django.views.decorators.csrf import csrf_exempt


RAZORPAY_KEY_ID = 'rzp_test_eJ5mQZgxVgK8kB'
RAZORPAY_KEY_SECRET = 'MqbFMsNorvYfs83I2d3TEY69'

def admin_login(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        if email == "admin@gmail.com" and password == "admin":
            request.session['admin'] = 'admin@gmail.com'
            messages.info(request, "Successfully Login")
            return redirect('/admin_home/')
        elif email != "admin@gmail.com":
            messages.error(request, "Wrong Admin Email")
            return redirect('/admin_login/')
        elif password != "admin":
            messages.error(request, "Wrong Admin Password")
            return redirect('/admin_login/')
    return render(request, 'admin/login.html')

def admin_home(request):
    u = User.objects.all()
    c = comic_content.objects.all()
    p = comic_payment.objects.all()
    total_users = User.objects.all().count()
    total_comic_content = comic_content.objects.all().count()
    total_comic_payment = comic_payment.objects.all().count()
    return render(request,'admin/admin_home.html',{'u':u,'total_users':total_users,'total_comic_content':total_comic_content,'total_comic_payment':total_comic_payment})

def comic_table(request):
    c = comic_content.objects.all()
    return render(request,'admin/comic_table.html',{'c':c})

def data_table(request):
    u = User.objects.all()
    return render(request,'admin/data_table.html',{'u':u})

def delete_user(request,id):
    d = User.objects.get(id=id)
    d.delete()
    u = User.objects.all()
    return redirect('/data_table/')

def delete_comic(request,id):
    d = User.objects.get(id=id)
    d.delete()
    u = User.objects.all()
    return redirect('/comic_table/')



def admin_logout(request):
    return redirect('/twousers/')

def home(request,id):

    book_id = id

    a = AddImage.objects.get(id=id)
    price = int(a.price)
    amount= price*100

    email = request.session.get('user')
    u = User.objects.get(username=email)
    user_id = int(u.id)

    client = razorpay.Client(auth=("rzp_test_eJ5mQZgxVgK8kB", "MqbFMsNorvYfs83I2d3TEY69"))
    payment = client.order.create({'amount':amount,'currency':'INR','payment_capture':'1'})

    return render(request, "payment.html", {'payment': payment,'u':u,'book_id':book_id,'amount':amount,'user_id':user_id})


@csrf_exempt
def success(request):
    if request.method == 'POST':
        book_id = request.POST['book_id']
        amount = request.POST['amount']
        user_id =request.POST['user_id']

        comic_payment(book_id=book_id, amount=amount,user_id = user_id, status = "completed").save()
        messages.success(request, 'Payment has been done successfully.')

    return render(request,'success.html')



def action(request):
    action = AddImage.objects.filter(category='action')
    ca = AddImage.objects.filter(category='action').first()
    return render(request,'action.html',{'action':action,'ca':ca})

def romance(request):
    action = AddImage.objects.filter(category='romance')
    ca = AddImage.objects.filter(category='romance').first()
    return render(request, 'action.html', {'action': action, 'ca': ca})

def horror(request):
    action = AddImage.objects.filter(category='horror')
    ca = AddImage.objects.filter(category='horror').first()
    return render(request, 'action.html', {'action': action, 'ca': ca})

def comedy(request):
    action = AddImage.objects.filter(category='comedy')
    ca = AddImage.objects.filter(category='comedy').first()
    return render(request, 'action.html', {'action': action, 'ca': ca})

def thriller(request):
    action = AddImage.objects.filter(category='thriller')
    ca = AddImage.objects.filter(category='thriller').first()
    return render(request, 'action.html', {'action': action, 'ca': ca})

def drama(request):
    action = AddImage.objects.filter(category='drama')
    ca = AddImage.objects.filter(category='drama').first()
    return render(request, 'action.html', {'action': action, 'ca': ca})

def airtical(request):
    return render(request,'air.html')


def update(request):
    if request.method == "POST":
        id = request.POST.get('id')
        image1 = request.FILES.get('image1')
        image2 = request.FILES.get('image2')
        image3 = request.FILES.get('image3')

        if id and image1 and image2 and image3:
            # Define the storage location
            fs = FileSystemStorage(location=os.path.join(settings.MEDIA_ROOT, 'comic_images'))

            # Generate new file paths with the "comic_images/" prefix
            image1_path = os.path.join('comic_images', fs.save(image1.name, image1))
            image2_path = os.path.join('comic_images', fs.save(image2.name, image2))
            image3_path = os.path.join('comic_images', fs.save(image3.name, image3))

            # Use the update query to update the image field for a specific object
            comic_content.objects.filter(id=id).update(
                image1=image1_path,
                image2=image2_path,
                image3=image3_path
            )

    return render(request, 'update.html')


def addcomic(request):
    if request.method == "POST":
        # Get details from the form
        logo = request.FILES.get('image')
        title = request.POST.get('title')
        category = request.POST.get('category')
        price = request.POST.get('price')
        status = request.POST.get('status')
        message = request.POST.get('message')

        # Create a new AddComic instance and save the details
        new_comic = AddImage(
            title=title,
            logo=logo,
            category=category,
            price=price,
            status=status,
            description=message
        )
        new_comic.save()

        # Handle comic images
        images = request.FILES.getlist("addimage[]")

        # Iterate over the images and save them to the new instance
        for image in images:
            new_image = YourImageModel(image=image)
            new_image.save()
            new_comic.comicimages.add(new_image)

        messages.success(request, 'Comic has been added successfully')
        return redirect('addcomic')

    return render(request, 'upload.html')

# def upload(request):
#     if request.method == 'POST':
#         form = YourModelForm(request.POST, request.FILES)
#         if form.is_valid():
#             instance = form.save(commit=False)
#
#             # Save the images separately to the ImageModel
#             for img in request.FILES.getlist('images'):
#                 instance_image = ImageModel(image=img)
#                 instance_image.save()
#                 instance.images.add(instance_image)
#
#             instance.save()
#             return redirect('/up_comic/')  # Redirect to a success page
#
#     else:
#         form = YourModelForm()
#
#     return render(request, 'upload.html', {'form': form})

def profile(request):
    email = request.session.get('user')
    u = User.objects.get(username=email)
    return render(request,'profile.html',{'u':u})

@login_required
def profile_update(request):
    email = request.session.get('user')
    u = User.objects.get(username=email)
    if request.method == 'POST':
        user = request.user

        # Get the form data
        new_username = request.POST.get('username', '')
        new_email = request.POST.get('emailaddress', '')
        old_password = request.POST.get('pass1', '')
        new_password = request.POST.get('pass2', '')

        # Check if the old password is correct
        if user.check_password(old_password):
            # Update user details
            user.username = new_username
            user.email = new_email

            # Check if a new password is provided, and update if available
            if new_password:
                user.set_password(new_password)
                update_session_auth_hash(request, user)  # Update session to avoid logout

            user.save()

            messages.success(request, 'Profile updated successfully.')
            return redirect('/profile/')  # Redirect to the same page after updating
        else:
            messages.error(request, 'Incorrect old password. Profile not Updated.')

    return render(request, 'profile_update.html', {'u': u,'user': request.user})


def signin(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            request.session['user']=user.username
            return redirect('/comichome')  # Redirect to your home page or any other desired URL
        else:
            error_message = "Invalid username or password."
            messages.success(request, 'Invalid username or password')
    else:
        error_message = ""
    return render(request,'signin.html')

def category(request):
    return render(request,'category.html')

def index(request):
    return render(request,'index1.html')

def index2(request):
    return render(request,'index2.html')

def comic_home(request):
    con = AddImage.objects.all()

    # Query the database to get the latest articles
    latest_articles = AddImage.objects.all().order_by('-created_at')[:3]

    # Query the database to get the featured articles
    featured_articles = AddImage.objects.all()[:3]

    # Query the database to get the favourite articles
    fav_values = AddImage.objects.filter(fav=True)[:3]


    return render(request,'index.html',{'con':con,'latest_articles': latest_articles,'featured_articles':featured_articles,'fav_values':fav_values})

def imgslider(request, comic_id):
    comic_instance = get_object_or_404(AddImage, pk=comic_id)
    images = comic_instance.comicimages.all()
    return render(request, 'Comicbooks/imageslider.html', {'comic_instance': comic_instance, 'images': images})

def final(request,id):
    comic_instance = get_object_or_404(AddImage, pk=id)
    f = comic_instance.comicimages.all()
    return render(request,'final.html',{'f':f})

def single_content(request,id):
    x = AddImage.objects.get(id=id)

    email = request.session.get('user')
    u = User.objects.get(username=email)

    try:
        pay = comic_payment.objects.get(book_id=id)
        book_id = int(pay.book_id)
        user_id = int(pay.user_id)

    except comic_payment.DoesNotExist:
        pay = None
        book_id = None
        user_id = None

    return render(request,'single.html',{'x':x,'u':u,'book_id':book_id,'user_id':user_id})

def favourite(request):
    fav = AddImage.objects.filter(fav=True)
    return render(request,'favourite.html',{'fav':fav})

def reviews(request):
    return render(request,'review.html')

def like_button(request,id):
    x = AddImage.objects.get(id=id)
    x.fav = True
    x.save()
    return render(request,'single.html',{'x':x})


def payment_error(request,id):
    id = id
    return render(request,'error.html',{'id':id})

def logout(request):
    return render(request, 'signin.html')



def singup(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['pass1']
        cpassword =request.POST['pass2']
        email = request.POST['emailaddress']
        if password!=cpassword:
            messages.success(request,'enter the password same as current password')
            return redirect('/singup')

        user = User.objects.create_user(username=username, password=password,email = email)
        login(request, user)
        messages.success(request, 'The password was created successfully.')
        return redirect('/singin')
    return render(request,'signup.html')

def adminindex(request):
    return render(request,'adminindex.html')

def start_book(request):
    return render(request,'start.html')

def zero_book(request):
    return render(request, 'zero.html')

def Jojo_book(request):
    return render(request, 'Jojo.html')

def komi_book(request):
    return render(request, 'komi.html')

def Boruto_book(request):
    return render(request, 'Boruto.html')

def kaguya_book(request):
    return render(request, 'kaguya.html')

def smash_book(request):
    return render(request, 'smash.html')