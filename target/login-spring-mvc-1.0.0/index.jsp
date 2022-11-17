<%-- 
    Document   : index
    Created on : Oct 26, 2022, 7:34:52 AM
    Author     : himal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

        <style>

            *{
                box-sizing: border-box;
                margin: 0;
                padding: 0;


            }
            button{
                box-shadow: -1px 13px 27px -12px rgba(0,0,0,0.81);
                -webkit-box-shadow: -1px 13px 27px -12px rgba(0,0,0,0.81);
                -moz-box-shadow: -1px 13px 27px -12px rgba(0,0,0,0.81);
                cursor: pointer;
            }


            input{
                border: none;
                outline: none
            }
            .input_container{
                border: 1px black solid;
                width: 95%;
                height: 40px;
                display: flex;
                flex-direction: row;
                align-items: center;
                padding-left: 10px;
                padding-right: 10px;
                border-radius: 20px;
                margin-bottom: 5px


            }


            main{
                width: 100%;
                height: 100vh;
                display: flex;
                flex-direction: row;
                justify-content: center;
                align-items: center;
                align-content: center;

                background: url('./assets/css/login_bg.jpg')no-repeat;
                background-size: cover;
                background-position: 100%;
                opacity: 1


            }
            .cart{
                display: flex;
                flex-direction: row;

                align-items: center;
                background-color: green;
                min-height: 450px;
                min-width: 700px;
                background-color: white;

                border-radius: 20px;
            }


            .video_container{
                min-width: 50%;
                min-height:450px;
                background: url("./assets/css/night.gif") no-repeat ;
                background-size: cover;
                background-position: 100%;
                color: white;
                border-top-left-radius: 20px;
                border-bottom-left-radius: 20px;
                padding: 10px;
                padding-left: 20px;
                justify-content: center;
                align-items: start;
                display: flex;
                flex-direction: column;



            }
            .video_container>h2{
                font-size: 35px;
                font-weight: bold;
                margin-bottom:  .5em;

            }
            .video_container>p{
                color:darkgrey;
                font-size: 12px;

            }
            .login_container{

                width: 50%;
                height: 100%;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }
            .login_form>h1{
                font-weight: 200;

            }
            .login_info_container_username{
                margin-bottom: 10px
            }









            #signupcart{
                background:url('https://www.desktopbackground.org/download/o/2011/06/24/223976_white-nature-landscape-wallpapers-hd_2880x1800_h.jpg');
                background-size: cover;
                background-position: 100%;
            }

        </style> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!--        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>-->
    </head>
    <body>
        <div id="lblerrormsg" style=" width:100%;height: auto;position: absolute;display: flex;flex-direction: column;justify-content: right;align-items:end">
            <div id="lblerrocontainer" style=" background-color: white; border-left: 5px red solid; padding: 10px; display: flex;flex-direction: row;justify-content: center;align-items: center">
                <img id="errorimg" src="./assets/css/faild.png" alt="alt" width="55px" height="40px"/>
                <div style=" margin-left: 5px">
                    <h5 id="errortext">LOGIN FAILD</h5>
                    <p id='errorsubtext' style=" font-size: 14px">Invalid User Name or Password</p>
                </div>

            </div>
        </div>
        <main>

            <div class="cart" id="signincart">
                <div class="video_container">
<!--                    <img src="<%=request.getContextPath() + "/assets/css/night.gif"%>" alt="loginImg"  />-->
                    <h2>Welcome back,</h2>
                    <p>to start you future in today !!!</p>
                    <p>please login and start your work shop &#128512;</p> 
                </div>
                <div class="login_container">
                    <form class="login_form">
                        <h1>Sign in</h1>
                        <div style=" margin-top: 15px;margin-bottom: 5px;display: flex;flex-direction: column;justify-content: center">
                            <div class="login_info_container_username">
                                <div class="input_container">
                                    <i class="fa-regular fa-user" style=" margin-right: 10px"></i>
                                    <input type="text"  style=" width: 75%" id="username" placeholder="user name" name="username">

                                </div>
                                <label class="lblusernameerror" style="font-size: 13px; background-color:rgba(0, 0, 0, 0.3);padding: 5px;border-radius: 20px;opacity: 0.9;padding-left: 10px;padding-right: 10px ">not available user</label>
                            </div>
                            <div>
                                <div  id="pwcontainer" class="input_container">
                                    <i class="fa-solid fa-lock"style="margin-right: 10px"></i>
                                    <input type="password" style=" width: 75%;" id="password" placeholder="Password" name="password">
                                    <i class="fa-regular fa-eye-slash lblvisiblepassword"  style="cursor: pointer; margin-left: 5px"></i>

                                </div>
                                <label id="lblpwerror"style="  font-size: 13px; background-color:rgba(0, 0, 0, 0.3);padding: 5px;border-radius: 20px;opacity: 0.9;padding-left: 10px;padding-right: 10px ">required min charactor 08</label>
                            </div>


                        </div>
                        <div>
                            <p  style=" color:#57606f;font-size: 13px">Don't have an account?<lable style=" font-size: 12px; text-decoration: underline;cursor: pointer;color:  #5352ed" id="changesignup">create account</lable></p>
                        </div>
                        <div  style="display: flex;flex-direction: column;align-items: center" >
                            <button id="btnLogin" type="button" style="color: white; width: 90%; position: relative; left: -1px; text-align: center; border: none;outline: none;margin-top: 25px; padding-top: 10px;padding-bottom: 10px;border-radius: 20px;font-size: 17px; background-color: #5352ed" >SIGN IN</button>
                        </div>
                    </form>

                </div>
            </div>

            <!--sign up  -->
            <div class="cart" id="signupcart">
                <div style=" padding: 10px;padding-bottom: 20px;padding-top: 20px;display: flex;flex-direction: column;width: 100%;height: 100%;justify-content: center;align-items: center">
                    <h1 style=" margin-bottom: 20px" >Sign Up</h1>
                    <form style=" display: flex;flex-direction: column; justify-content: left;align-items: center">

                        <div style="margin-bottom: 12px;display:flex;flex-direction: column;width: 250px">
                            <div style=" display: flex;flex-direction: row ;position: relative">
                                <div id="usernamecontainerSignup" style=" box-shadow: 0px 0px 0px 0px rgba(0,0,0,0); display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                     padding-right: 10px; margin-bottom: 5px;width: 100%;height: 40px;align-items: center">
                                    <i class="fa-solid fa-user" style=" margin-right: 5px"></i>
                                    <input type="text" placeholder="Enter User Name" id="txtUserNameSignUp"style="width: 90%; background: transparent  "   name="username"  required="true"/>

                                </div>
                                <label class="lblusernameerror" style="color: red; font-size: 13px;position: absolute;right: -180px;top: 10px">user name alredy exists</label>
                            </div>
                            <ul style=" font-size: 13px; position: relative;left: 20px;color:#57606f ">
                                <li>First Charactor must be capital</li>
                                <li>Don't use spaces</li>
                            </ul>

                        </div>
                        <div style="margin-bottom: 12px;display:flex;flex-direction: column;">

                            <div id="passwordcontainerSignup" style="left: 10px; position: relative; display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                 padding-right: 10px; margin-bottom: 5px;width:250px;height: 40px;align-items: center">

                                <i class="fa-solid fa-key"style=" margin-right: 5px"></i>
                                <input type="password" placeholder="Enter password"  id="txtpasswordSignUp"style="width: 90%; background: transparent "  class="row form-control m-2" name="password"  required="true"/>
                                <i class="fa-regular fa-eye-slash lblvisiblepassword"style="margin-left: 3px;cursor: pointer"></i>
                            </div>
                            <ul style=" font-size: 13px; position: relative;left: 30px;color:#57606f ">
                                <li>Must be min charactor 08</li>
                                <li>Requrired one or more special charactors</li>
                            </ul>

                        </div>

                        <div style="display:flex;flex-direction: column;">

                            <div   style=" display: flex;flex-direction: row ;position: relative; ">
                                <div id="passwordconfirmcontainerSignup" style=" display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                     padding-right: 10px; margin-bottom: 5px;width:250px;height: 40px;align-items: center">
                                    <i class="fa-solid fa-key"style=" margin-right: 5px"></i>
                                    <input type="password" placeholder="re-enter password" id="txtConfirmPasswordSignUp"style="width: 90%;background: transparent  "  class="row form-control m-2" name="password"  required="true"/>

                                    <!--                                    <i class="fa-regular fa-eye-slash lblvisiblepassword"style="margin-left: 3px"></i>-->
                                </div>
                                <label id="lblMatchSignUp"  style="color: red; font-size: 13px;position: absolute;right: -180px;top: 10px">Password dosn't match</label>
                            </div>

                        </div>

                        <div style="margin-bottom: 12px;display:flex;flex-direction: column;">

                            <div  id="firstnamecontainerSignup" style=" position: relative;left: 10px; display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                  padding-right: 10px; margin-bottom: 5px;width:250px;height: 40px;align-items: center">
                                <i class="fa-regular fa-face-smile"style=" margin-right: 5px"></i>

                                <input type="text" placeholder="Enter First Name" id="txtFirstNameSignUp"style="width: 90%; background: transparent "  class="row form-control m-2" name="firstname"  required="true"/>

                            </div>
                            <div id="lastnamecontainerSignup" style="position: relative;left: 10px;  display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                 padding-right: 10px; margin-bottom: 5px;width: 250px;height: 40px;align-items: center">
                                <i class="fa-regular fa-face-smile"style=" margin-right: 5px"></i>

                                <input type="text" placeholder="Enter Last Name"id="txtLastNameSignUp" name="lastname"required="true" style="background: transparent"/>
                            </div>
                            <ul style=" font-size: 13px; position: relative;left: 30px;color:#57606f ">
                                <li>Must be First Charactor Capital</li>
                                <li>Don't use number or any special numbers</li>
                            </ul>

                        </div>
                        <div style="display:flex;flex-direction: column;width: 250px">
                            <div style=" display: flex;flex-direction: row ;position: relative">
                                <div id="niccontainerSignup" style=" display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                     padding-right: 10px; margin-bottom: 5px;width: 100%;height: 40px;align-items: center">
                                    <i class="fa-solid fa-file"style=" margin-right: 5px"></i>

                                    <input type="text" placeholder="Enter NIC" id="txtNic"required="true" name="nic" style="width: 90%; background: transparent "/>

                                </div>
                                <label id="lblNic" style="color: red; font-size: 13px;position: absolute;right: -150px;top: 10px">NIC alredy exists</label>
                            </div>


                        </div>



                        <div style="margin-bottom: 12px;display:flex;flex-direction: column;">

                            <div id="addresscontainerSignup" style=" display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                 padding-right: 10px; margin-bottom: 5px;width: 250px;height: 40px;align-items: center">
                                <i class="fa-solid fa-house-chimney"style=" margin-right: 2px"></i>

                                <input type="text"  placeholder="Enter City" id="txtAddressSignUp" name="address" style="width: 90%;background: transparent  "   name="address"  required="true"/>

                            </div>
                            <ul style=" font-size: 13px; position: relative;left: 30px;color:#57606f ">

                                <li>Must be First Charactor Capital</li>
                            </ul>

                        </div>
                        <div style="margin-bottom: 12px;display:flex;flex-direction: column;">

                            <div id="dobcontainer" style=" display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                 padding-right: 10px; margin-bottom: 5px;width:250px;height: 40px;align-items: center">
                                <i class="fa-solid fa-baby" style="margin-right: 5px"></i>

                                <input type="date" placeholder="Enter DOB" id="txtDOB" name="dob" style="width: 90%; background: transparent "   name="address"  required="true"/>

                            </div>
                            <ul style=" font-size: 13px; position: relative;left: 30px;color:#57606f ">


                                <li>age must be 18+</li>


                            </ul>

                        </div>

                        <div style="display:flex;flex-direction: column;">
                            <div style=" display: flex;flex-direction: row ;position: relative">
                                <div id="emailcontainerSignup" style=" display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                     padding-right: 10px; margin-bottom: 5px;width: 250px;height: 40px;align-items: center">
                                    <i class="fa-solid fa-envelope" style=" margin-right: 5px"></i>

                                    <input type="email" placeholder="Enter email" id="txtEmail" style="width: 90%;background: transparent  "   name="email"  required="true"/>

                                </div>
                                <label id="lblemail" style="color: red; font-size: 13px;position: absolute;right: -160px;top: 10px">email alredy exists</label>
                            </div>


                        </div>
                        <div  style="display: flex;flex-direction: column;align-items: center;width: 100%" >
                            <button id="btnAddUser" type="button" style="color: white; width: 90%; position: relative; left: -1px; text-align: center; border: none;outline: none;margin-top: 25px; padding-top: 10px;padding-bottom: 10px;border-radius: 20px;font-size: 17px; background-color: #1e3799" >SIGN UP</button>
                        </div>
                        <div  style="margin-top: 5px;display: flex;flex-direction:row; width: 100% ;justify-content: center;align-items: center">
                            <label style="  color:#57606f;font-size: 13px">you have an account?</label><p id="lblloginAcc" style="font-size: 12px; text-decoration: underline;cursor: pointer;color:  #5352ed; width: fit-content">login</p>
                        </div>
                    </form>
                </div>
            </div>

        </main>






        <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
        <script type="text/javascript">
            $(document).ready(function () {


                //sign in start
                $("#lblpwerror").hide();
                $(".lblusernameerror").hide();
                $('#lblerrormsg').hide();
                $('#signupcart').hide();
                $('#signincart').show();
                //signup 

                $('#lblNic').hide();
                $("#lblemail").hide();
                $('#lblMatchSignUp').hide();
                $("#username").on("change keyup past", function () {

                    var data = {username: $('#username').val(), type: "username"};
                    checkAvailableUserName(data);
                });
                $("#password").on('change keyup past', function () {
                    if ($(this).val().length < 8) {
                        $("#lblpwerror").show();
                    } else {
                        $("#lblpwerror").hide();
                    }
                });
                $(".lblvisiblepassword").mouseenter(function () {
                    $('#password').attr('type', 'text');
                    $('#txtpasswordSignUp').attr('type', 'text');
                    $('#txtConfirmPasswordSignUp').attr('type', 'text');
                });
                $(".lblvisiblepassword").mouseleave(function () {
                    $('#password').attr('type', 'password');
                    $('#txtpasswordSignUp').attr('type', 'password');
                    $('#txtConfirmPasswordSignUp').attr('type', 'password');
                });
                // send login request

                $('#btnLogin').click(function () {

                    loginUser();

                });


                $('#changesignup').click(function () {
                    $('#signincart').hide();
                    $('#signupcart').show();


                });

                $('#lblloginAcc').click(function () {
                    $('#signincart').show();
                    $('#signupcart').hide();
                })
                //sign in end






                $('#txtUserNameSignUp').on('change past keyup', function () {


                    var data = {username: $('#txtUserNameSignUp').val(), type: ""};
                    const regex = /^[A-Z][a-zA-Z]+$/;
                    checkAvailableUserName(data)
                    if (regex.test(data.username)) {
                        $('#usernamecontainerSignup').css('borderColor', 'green');
                        $('#usernamecontainerSignup').css('box-shadow', '1px 1px 3px green');
                    } else {
                        $('#usernamecontainerSignup').css('borderColor', 'red');
                        $('#usernamecontainerSignup').css('box-shadow', '1px 1px 3px red');
                    }
                });
                $('#txtNic').on('change past keyup', function () {
                    var data = {nic: $('#txtNic').val(), type: "nic"};
                    $.ajax({
                        type: 'get',
                        url: 'http://localhost:8080/login/login',
                        data: data,
                        success: function (msg) {

                            if (msg == 'true') {
                                $('#niccontainerSignup').css('borderColor', 'red');
                                $('#niccontainerSignup').css('box-shadow', '1px 1px 3px red');
                                $("#lblNic").show();
                            } else {
                                $('#niccontainerSignup').css('borderColor', 'green');
                                $('#niccontainerSignup').css('box-shadow', '1px 1px 3px green');
                                $("#lblNic").hide();
                            }

                        },
                        error: function (erro) {

                        }
                    })
                });
                $('#txtEmail').on('change past keyup', function () {
                    var data = {email: $('#txtEmail').val(), type: "email"};
                    $.ajax({
                        type: 'get',
                        url: 'http://localhost:8080/login/login',
                        data: data,
                        success: function (msg) {

                            if (msg == 'true') {

                                $('#emailcontainerSignup').css('borderColor', 'red');
                                $('#emailcontainerSignup').css('box-shadow', '1px 1px 3px red');
                                $("#lblemail").show();
                            } else {
                                $('#emailcontainerSignup').css('borderColor', 'green');
                                $('#emailcontainerSignup').css('box-shadow', '1px 1px 3px green');
                                $("#lblemail").hide();
                            }

                        },
                        error: function (erro) {

                        }
                    })
                });
                $('#txtpasswordSignUp').on('keyup change past', function () {
                    var regex = /^[a-zA-Z0-9!@#\$%\^\&*\)\(+=._-]{8,}$/;
                    if (regex.test($('#txtpasswordSignUp').val())) {
                        $('#passwordcontainerSignup').css('borderColor', 'green');
                        $('#passwordcontainerSignup').css('box-shadow', '1px 1px 3px green');
                    } else {
                        $('#passwordcontainerSignup').css('borderColor', 'red');
                        $('#passwordcontainerSignup').css('box-shadow', '1px 1px 3px red');
                    }
                });
                $('#txtConfirmPasswordSignUp').on('keyup change past', function () {


                    if ($('#txtpasswordSignUp').val() == $('#txtConfirmPasswordSignUp').val()) {

                        $('#passwordconfirmcontainerSignup').css('borderColor', 'green');
                        $('#passwordconfirmcontainerSignup').css('box-shadow', '1px 1px 3px green');
                        $('#lblMatchSignUp').hide();
                    } else {
                        $('#passwordconfirmcontainerSignup').css('borderColor', 'red');
                        $('#passwordconfirmcontainerSignup').css('box-shadow', '1px 1px 3px red');
                        $('#lblMatchSignUp').show();
                    }
                });
                $('#txtFirstNameSignUp').on('keyup change past', function () {

                    const regex = /^[A-Z][a-zA-Z]+$/;
                    if (regex.test($('#txtFirstNameSignUp').val())) {
                        $('#firstnamecontainerSignup').css('borderColor', 'green');
                        $('#firstnamecontainerSignup').css('box-shadow', '1px 1px 3px green');
                    } else {
                        $('#firstnamecontainerSignup').css('borderColor', 'red');
                        $('#firstnamecontainerSignup').css('box-shadow', '1px 1px 3px red');
                    }
                });
                $('#txtLastNameSignUp').on('keyup change past', function () {


                    const regex = /^[A-Z][a-zA-Z]+$/;
                    if (regex.test($('#txtLastNameSignUp').val())) {
                        $('#lastnamecontainerSignup').css('borderColor', 'green');
                        $('#lastnamecontainerSignup').css('box-shadow', '1px 1px 3px green');
                    } else {
                        $('#lastnamecontainerSignup').css('borderColor', 'red');
                        $('#lastnamecontainerSignup').css('box-shadow', '1px 1px 3px red');
                    }
                });

                $('#txtAddressSignUp').on('keyup change past', function () {


                    const regex = /^[A-Z][a-zA-Z]+$/;
                    if (regex.test($('#txtAddressSignUp').val())) {
                        $('#addresscontainerSignup').css('borderColor', 'green');
                        $('#addresscontainerSignup').css('box-shadow', '1px 1px 3px green');
                    } else {
                        $('#addresscontainerSignup').css('borderColor', 'red');
                        $('#addresscontainerSignup').css('box-shadow', '1px 1px 3px red');
                    }
                });


                $('#btnAddUser').click(function () {
                    if (/^[A-Z][a-zA-Z]+$/.test($('#txtUserNameSignUp').val())) {
                        if (/^[a-zA-Z0-9!@#\$%\^\&*\)\(+=._-]{8,}$/.test($('#txtpasswordSignUp').val())) {
                            if ($('#txtpasswordSignUp').val() == $('#txtConfirmPasswordSignUp').val()) {
                                if (/^[A-Z][a-zA-Z]+$/.test($('#txtFirstNameSignUp').val())) {
                                    if (/^[A-Z][a-zA-Z]+$/.test($('#txtLastNameSignUp').val())) {
                                        if ($('#txtNic').val().length > 0) {
                                            if (/^[A-Z][a-zA-Z]+$/.test($('#txtAddressSignUp').val())) {
                                                if ($('#txtDOB').val().length > 0) {

                                                    $('#dobcontainer').css('borderColor', 'green');
                                                    $('#dobcontainer').css('box-shadow', '1px 1px 3px green');

                                                    if ($('#txtEmail').val().length > 0) {
                                                        saveUser();
                                                    } else {
                                                        $('#emailcontainerSignup').css('borderColor', 'red');
                                                        $('#emailcontainerSignup').css('box-shadow', '1px 1px 3px red');

                                                    }
                                                } else {

                                                    $('#dobcontainer').focus();
                                                    $('#dobcontainer').css('borderColor', 'red');
                                                    $('#dobcontainer').css('box-shadow', '1px 1px 3px red');
                                                }
                                            } else {
                                                $('#addresscontainerSignup').focus();
                                                $('#addresscontainerSignup').css('borderColor', 'red');
                                                $('#addresscontainerSignup').css('box-shadow', '1px 1px 3px red');
                                            }
                                        } else {
                                            $('#niccontainerSignup').focus();
                                            $('#niccontainerSignup').css('borderColor', 'red');
                                            $('#niccontainerSignup').css('box-shadow', '1px 1px 3px red');
                                        }
                                    } else {
                                        $('#txtLastNameSignUp').focus();
                                        $('#txtLastNameSignUp').css('borderColor', 'red');
                                        $('#txtLastNameSignUp').css('box-shadow', '1px 1px 3px red');
                                    }
                                } else {
                                    $('#firstnamecontainerSignup').focus();
                                    $('#firstnamecontainerSignup').css('borderColor', 'red');
                                    $('#firstnamecontainerSignup').css('box-shadow', '1px 1px 3px red');
                                }
                            } else {
                                $('#passwordconfirmcontainerSignup').focus();
                                $('#passwordconfirmcontainerSignup').css('borderColor', 'red');
                                $('#passwordconfirmcontainerSignup').css('box-shadow', '1px 1px 3px red');
                                $('#lblMatchSignUp').show();
                            }
                        } else {
                            $('#passwordcontainerSignup').focus();
                            $('#passwordcontainerSignup').css('borderColor', 'red');
                            $('#passwordcontainerSignup').css('box-shadow', '1px 1px 3px red');
                        }
                    } else {
                        $('#usernamecontainerSignup').focus();
                        $('#usernamecontainerSignup').css('borderColor', 'red');
                        $('#usernamecontainerSignup').css('box-shadow', '1px 1px 3px red');
                    }
                })





            });


            function loginUser() {

                var decrypt = window.btoa($('#password').val());


                var info = {username: $('#username').val(), password: decrypt};
                $.ajax({
                    type: "post",
                    url: "http://localhost:8080/login/login",
                    dataType: "text",
                    data: info,
                    success: function (msg) {



                        if (msg === "SUCCESS") {
                            $('#errortext').text("LOGIN SUCCESS");
                            $('#errorsubtext').text('Your are login now dashboard');
                            $('#lblerrocontainer').css('border-left', '5px green solid')
                            $('#errorimg').attr('src', './assets/css/success.png');
                            $('#lblerrormsg').show();
                            setTimeout(setTimerSucces, 2000);
                        } else if (msg === "USERNAME_OR_PASSWORD_INCORRECT") {
                            $('#errortext').text("LOGIN FAILD");
                            $('#errorsubtext').text('Invalid User Name or Password');
                            $('#lblerrocontainer').css('border-left', '5px red solid')
                            $('#errorimg').attr('src', './assets/css/faild.png');
                            $('#lblerrormsg').show();
                            setTimeout(setTimerErro, 2000);
                        }

                    },
                    error: function (err) {
                        console.log(err)
                    }


                });
            }



            function saveUser() {


                var encrypt = window.btoa($('#txtConfirmPasswordSignUp').val());


                var data = {
                    username: $('#txtUserNameSignUp').val(),
                    password: encrypt,
                    firstname: $('#txtFirstNameSignUp').val(),
                    lastname: $('#txtLastNameSignUp').val(),
                    nic: $('#txtNic').val(),
                    address: $('#txtAddressSignUp').val(),
                    dob: $('#txtDOB').val(),
                    email: $('#txtEmail').val(),

                }

                $.ajax({
                    type: "post",
                    url: "http://localhost:8080/login/dashboard",
                    data: data,
                    success: function (msg) {

                        if (msg == 'true') {
                            $('#errortext').text("USER CREATE SUCCESS");

                            $('#errorsubtext').text('Your are login now dashboard');
                            $('#lblerrocontainer').css('border-left', '5px green solid')
                            $('#errorimg').attr('src', './assets/css/success.png');
                            $('#lblerrormsg').show();
                            setTimeout(setTimerSucces, 2000);
                        } else if (msg == 'false') {
                            $('#errortext').text("FAIL TO CREATE");
                            $('#errorsubtext').text('Please try again');
                            $('#lblerrocontainer').css('border-left', '5px red solid')
                            $('#errorimg').attr('src', './assets/css/faild.png');
                            $('#lblerrormsg').show();
                            setTimeout(setTimerErro, 2000);
                        }




                    }, error: function (err) {
                        console.log(err)
                    }
                })
            }





            function setTimerErro() {


                $("#lblerrormsg").hide();
            }
            function setTimerSucces() {


                $("#lblerrormsg").hide();
                window.location.href = "dashboard.jsp";
            }

            function checkAvailableUserName(data) {
                $.ajax({
                    type: "get",
                    url: "http://localhost:8080/login/login",
                    data: data,
                    success: function (msg) {

                        if (msg == "true") {
                            $(".lblusernameerror").hide();
                            return true;
                        } else {
                            $(".lblusernameerror").show();
                            return false;
                        }
                    }
                });
            }
        </script>
    </body>
</html>
