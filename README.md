# FAMBLAH API

<p align="center">
    <img src="https://i.imgur.com/ldslPC7.png" width="120" >
</p>

This API is developed using the PHP Slim Framework, In this API you can use thease feature.

* **Create an account** ( *An email verification will be sent to user email address when they rgistered an account* )
* **Login into account** ( *User can login into their account when they will successfully verified their account* )
* **Forgot Password** ( *User can make a request that they have forgot their password, An OTP will be send to user's email address* )
* **Reset Password** ( *User can reset password, by using the OTP which they have recieved, An email will also be send when they succesfully changed their password* )
* **Update Password** ( *User can update password, An email will also be send when they succesfully changed their password* )
* **Send Email Verification Code** (*You can add a feature that user can send email verifcation code again to their email address* )
* **Verify Email Verification Code** (*To verify the email verification link* )
* **Current User Information** ( *To view current Login users information e.g. Name, Email,Id. Need authuntication to get or view user informations* )
* **Users List** ( *To view all usesrs information e.g. Name, Email,Id. Need authuntication to view users informations* )
* **User Information** ( *To view specific user information by username e.g. Name, Email,Id. Need authuntication to view users informations* )
* **Update User** ( *To update the user information e.g. Name, Username,Id,Image,etc...*) 
* **Friends** ( *To get the friend list or the data of friend of specific user*)
* **Image** ( *Get all feeds or posted images of a user*)
* **Send Friend Request** ( *To send a friend request*) 
* **Accept Friend Request** ( *To accept a friend request*)
* **Cancel Friend Request** ( *To cancel a friend request*)
* **Delete Friend** ( *To Delte an existing friend, or delete friendship with a users*)
* **Post Feed** ( *To Post the Feed.* )
* **Delete Feed** ( *To Delete the Feed* )
* **Retrive All Feed** ( *To retrive all feed* )
* **Retive All Feed Of Specific User** ( *You can retrive all post of a specific user by their username* )
* **Retrive A Single Post** ( *You can retrive a signle feed using the feedId* )
* **Like Feed** ( *To Like The Feed* )
* **UnLike Feed** ( *To Unlike the liked feeds* )
* **Report Feed** ( *To Report feed of user* )
* **Post Feed Comment** ( *To Post Comments For The Feed* )
* **Delete Feed Comment** ( *To Delete a comment of Feed* )
* **Retrive All Comments Of Specific Feeds** ( *To retrive a comments list of specific post or feed*)
* **Like Feed Comment** ( *Like feed comment*)
* **Unlike Feed Comment** ( *Unlike the liked feed comment*)
* **Delete Feed Comment** ( *Delete feed comment*)
* **Notification** ( *Get all the notification of a specific user*)
* **Notification Count** ( *To get all unseen or active notifications count*)
* **Notification Seen** ( *Make all notification of specific user to inactive of seened notification*)
* **Post Video** ( *To post the video*)
* **Videos** ( *Get the all the videos*)
* **Video By Video Id** ( *Get an specific video by the id of the video*)
* **Verification Request** ( *Request for the the verification badge*)
* **Contact** ( *user can contact your by writing a message*)


## Feauter Explanation

To use this project's feature, you need to make changes only in `Constants.php` file, and that's it.

Set your database connection's information.
```bash
//Database Connection
define('DB_NAME', 'socialcodia');    //your database username
define('DB_USER', 'root');          //your database name
define('DB_PASS', '');              //your database password
define('DB_HOST', 'localhost');     //your database host name
```

And you also need to make change in website section of `Constants.php` file.

```bash
//Website Information
define('WEBSITE_DOMAIN', 'http://famblah.cf/public/');               //your domain name
define('WEBSITE_EMAIL', 'socialcodia@gmail.com');                    //your email address
define('WEBSITE_EMAIL_PASSWORD', 'PASSWORD');                        //your email password
define('WEBSITE_EMAIL_FROM', 'Social Codia');                        // your website name here
define('WEBSITE_NAME', 'Social Codia');                              //your website name here
define('WEBSITE_OWNER_NAME', 'Umair Farooqui');                      //your name, we will send this name with email verification mail.

```

```bash
// JWT ( *JSON Web Token* ) Information
define('JWT_SECRET_TOKEN','SocialCodia');                              //Your JWT secret key here,
```
> **Note :** In `JWT_SECRET_TOKEN`, Please use a very hard and dificult key which no one can guess that key.

## Register An Account

To Create An Account, Accept only post request with four parameter
* Name
* Username
* Email
* Password

The end point is to Create or Register an account is `register`

<b>Demo Url</b> 
* API Url <a href="http://socialapi.socialcodia.ml/register">http://socialapi.socialcodia.ml/register</a>
* GUI Url <a href="http://socialui.socialcodia.ml/register">http://socialui.socialcodia.ml/register</a>

An email verification will be send to user email address when they registered an account into the system.

In verification email the verification link will be like this.

```bash

    http://socialapi.socialcodia.ml/verifyEmail/wdpWwmufazmit4Py2aYd7MsocialcodiavknYY3bKxS7okyO9NgpYTmufazmiTGsocialcodiaE=/$2y$10$GWEv1cnJo2YdGbmo4mrwA.LNsocialcodiai4sj8.EdxIZuyWX3fjRHEiBrBX2S

```
* Domain Name : (` http://socialapi.socialcodia.ml/ `)
* End Point (` verifyEmail `)
* Encypted User Email (` wdpWwmufazmit4Py2aYd7MsocialcodiavknYY3bKxS7okyO9NgpYTmufazmiTGsocialcodiaE= `)
* Encypted Code ( `$2y$10$GWEv1cnJo2YdGbmo4mrwA.LNsocialcodiai4sj8.EdxIZuyWX3fjRHEiBrBX2S` )

<p align="center">
    <img src="https://i.imgur.com/AGeCYFR.png" >
</p>

<b>Demo Url</b> 
* API Url <a href="http://socialapi.socialcodia.ml/verifyEmail/wdpWwmufazmit4Py2aYd7MsocialcodiavknYY3bKxS7okyO9NgpYTmufazmiTGsocialcodiaE=/$2y$10$GWEv1cnJo2YdGbmo4mrwA.LNsocialcodiai4sj8.EdxIZuyWX3fjRHEiBrBX2S">http://socialapi.socialcodia.ml/verifyEmail/wdpWwmufazmit4Py2aYd7MsocialcodiavknYY3bKxS7okyO9NgpYTmufazmiTGsocialcodiaE=/$2y$10$GWEv1cnJo2YdGbmo4mrwA.LNsocialcodiai4sj8.EdxIZuyWX3fjRHEiBrBX2S</a>


## Send Email Verification Code Again

To Send The Email Verification Code again, Accept only post request with only one parameter
* Email

User can make the send email verification link code if there email address is not verified yet.

The end point of send email verification code is `sendEmailVerfication`

<b>Demo Url</b>
* API Url <a href="http://socialapi.socialcodia.ml/sendEmailVerfication">http://socialapi.socialcodia.ml/sendEmailVerfication</a>
* GUI Url <a href="http://socialui.socialcodia.ml/sendEmailVerfication">http://socialui.socialcodia.ml/sendEmailVerfication</a>


## Login Into Account

To Login into Account, Accept only post request with two parameter
* Email
* Password

The end point of login is `login`

When user provide their email & password credential for login, first the server will validate the information like, the email is valid or not if not valid then server will gues that this is an username not a email address so forward the username to databse server and request to give there email address, if the usename exist into our database server then it will give the email address, otherwise the server will give response that the username is not exist into database server or the invalid username, if the email is address is valid email address and email is not exist into our databse server the server will simply response that the email is not registered, if the credential is valid then the request will return their public information with **Token**

The return infomration from the database will be like this.

```bash
{
    "error": false,
    "message": "Login Successfull",
    "user": {
        "id": 189,
        "name": "Social Codia",
        "username": "SocialCodia",
        "email": "socialcodia@gmail.com",
        "bio": "The Social Codia's Demo Bio",
        "verified": 1,
        "image": "http://famblah.cf/public/uploads/api/user.png",
        "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJzb2NpYWxjb2RpYS5uZXQiLCJpYXQiOjE1OTczMjEyMzcsInVzZXJfaWQiOjE4OX0.ROK464H6G3nyWFZGtMESdSD2Vd9RQm7foaIzdTQo5J4"
    }
}
```

<b>Demo Url</b> 
* API Url <a href="http://socialapi.socialcodia.ml/login">http://socialapi.socialcodia.ml/login</a>
* GUI Url <a href="http://socialui.socialcodia.ml/login">http://socialui.socialcodia.ml/login</a>

## VERIFY EMAIL VERIFICATIO CODE

To verifiy the email verification link accept only get request with two parameters,
* Email
* Verification Code

In the email verification link both parameter are encrypted the first parameter which email will be in encrypted format, and the second parameter which will the verification code.

*Example of Email Verification Link
    ```Bash
    http://socialapi.socialcodia.ml/verifyEmail/wdpWwmufazmit4Py2aYd7MsocialcodiavknYY3bKxS7okyO9NgpYTmufazmiTGsocialcodiaE=/$2y$10$GWEv1cnJo2YdGbmo4mrwA.LNsocialcodiai4sj8.EdxIZuyWX3fjRHEiBrBX2S
    ```
1) Encrypted Email :`wdpWwmufazmit4Py2aYd7MsocialcodiavknYY3bKxS7okyO9NgpYTmufazmiTGsocialcodiaE=`
2) Encrypted Verification Code : `$2y$10$GWEv1cnJo2YdGbmo4mrwA.LNsocialcodiai4sj8.EdxIZuyWX3fjRHEiBrBX2S`

The end point for email verification is `verifyEmail`

## Forgot Password

To send the Forgot Password request, Accept only post request with only one parameter
* Email

The end point of Forgot Password is `forgotPassword`

An OTP wil be sent to email address.

When you make a post request on the `forgotPassword`, 

This will perform these Validation before sending an OTP to users email address.

* The Email parameter should not be empty.
* The Email Address is a Valid email address or not.
* The Email Address is Exist into your database server or not.
* The Email Address is Verified email address or not.

<p align="center">
    <img src="https://i.imgur.com/zDJCbnS.png" >
</p>

<b>Demo Url</b> 
* API Url <a href="http://socialapi.socialcodia.ml/forgotPassword">http://socialapi.socialcodia.ml/forgotPassword</a>
* GUI Url <a href="http://socialui.socialcodia.ml/forgotPassword">http://socialui.socialcodia.ml/forgotPassword</a>

## Reset Password

To Reset the password, Accept only post request with three parameter
* Email
* OTP
* Password

The end point of Reset Password is `resetPassword`

When you make a request to Reset the password on `resetPassword`

This will perform some validation before varifying the OTP.
* The Email `Email`, `OTP` and `Password` should not be empty.
* The Email Address is a Valid email address or not.
* The Email Address is Exist into your database server or not.
* The Email Address is Verified email address or not.

Then they will check the `OTP` is correct or not, if correct then the new password will update into server.

<b>Demo Url</b> 
* API Url <a href="http://socialapi.socialcodia.ml/resetPassword">http://socialapi.socialcodia.ml/resetPassword</a>
* GUI Url <a href="http://socialui.socialcodia.ml/resetPassword">http://socialui.socialcodia.ml/resetPassword</a>


## Update Account Password

To update or changed the current password, Accept post request with two parameter with header.
* Password
* newPassword

The **Token** must be go in header, The token is mandatory for acception of request.
* Token


> Before returninng any data, This request will verify the current login users information using **Token**, and after that this will fetch the `user id` from the **Token** and update their password into database. An email notification also be sent when they will change their password with **Time**, **Date** and **Ip Address**.

The end point of update password is `updatePassword`

<b>Demo Url</b> 

* API Url <a href="http://socialapi.socialcodia.ml/updatePassword">http://socialapi.socialcodia.ml/updatePassword</a>
* GUI Url <a href="http://socialui.socialcodia.ml/settings">http://socialui.socialcodia.ml/settings</a>


an verification code will be sent to user email address when they successfull updated their password.

When any user reset there password or changed there password, a confirmation email will be deliver to their registered email address that the password has been changed,

For security reason, The email will be deliver with three parameter **Time** and **Date** and **Ip Address** .

<p align="center">
    <img src="https://i.imgur.com/dwo4Ol8.png" >
</p>

## View Users List
To view all users list from database, Authuntication is very compulsry for that, Any authunticated user can view the users public information list, e.g. Id, Name and Email,

To view the users public informations list, Accept only GET request with no parameter,
* This request will return the only the verified users public information.
* This request will take an authorization token to validate the user.

The end point of Users List is `users`

E.g *Data Return From The Server*

```bash
{
    "error": false,
    "message": "Users List Found",
    "users": [
        {
            "id": 157,
            "name": "Umair Farooqui",
            "email": "info.mufazmi@gmail.com",
            "image": "http://socialapi.socialcodia.net/public/uploads/5eeasfw53cdcde.png"
        },

        {
            "id": 173,
            "name": "Social Codia",
            "email": "socialcodia@gmail.com",
            "image": "http://socialapi.socialcodia.net/public/uploads/5ee7c753cdcde.png"
        }
    ]
}
```

<b>Demo Url</b> 

* API Url <a href="http://socialapi.socialcodia.ml/users">http://socialapi.socialcodia.ml/users</a>
* GUI Url <a href="http://socialui.socialcodia.ml/users">http://socialui.socialcodia.ml/users</a>

## Note :- WHEN ANY USER LOGIN INTO SYSTEM USING THERE EMAIL AND PASSWORD CREDENTIAL, AN TOKEN WILL ALSO BE SENT TO USER vbWITH USER PUBLIC INFORMATION, SO AFTER COMPLETATION OF LOGIN PROCESS THE TOKEN IN HEADER IS REQUIRED FOR MAKING ANY REQUEST

## Post Feed
To post the feed, Accept only post request with two parameter.
* postContent 
* postImage

The `postContent` parameter is optional if the `postImage` parameter is not empty, same is here, if `postContent` is not empty then the `postImage` parameter will be optional.


### At the end

you don't need to worry about that things, you only need to change the code of `Constants.php` File.

* You can check out the UI which is mainely developed for this project, <a href="https://github.com/SocialCodia/RestUi">@SocialCodia/RestUi</a>

* Visit on the link to perform API Action, http://socialui.SocialCodia.ml

That's it! Now go build something cool.
