<%-- 
    Document   : update
    Created on : Nov 1, 2022, 10:56:16 AM
    Author     : himal
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.epic.login_system.dto.UserDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Details ${user.getUsername()}</title>
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
        </style>
    </head>
    <body>

        <%

            //checking session 
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            response.setHeader("Expires", "0");

            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            } else {

                UserDto user = (UserDto) session.getAttribute("user");

            }


        %>

        <div id="lblerrormsg" style=" width:100%;height: auto;position: absolute;display: flex;flex-direction: column;justify-content: right;align-items:end">
            <div id="lblerrocontainer" style=" background-color: white; border-left: 5px red solid; padding: 10px; display: flex;flex-direction: row;justify-content: center;align-items: center">
                <img id="errorimg" src="./assets/css/faild.png" alt="alt" width="55px" height="40px"/>
                <div style=" margin-left: 5px">
                    <h5 id="errortext">LOGIN FAILD</h5>
                    <p id='errorsubtext' style=" font-size: 14px">Invalid User Name or Password</p>
                </div>

            </div>
        </div>

        <main >

            <div class="cart">
                <div style=" padding: 10px;padding-bottom: 20px;padding-top: 20px;display: flex;flex-direction: column;width: 100%;height: 100%;justify-content: center;align-items: center">
                    <h1 style=" margin-bottom: 20px" >Edit Info</h1>
                    <form style=" display: flex;flex-direction: column; justify-content: left;align-items: center">

                        <div style="margin-bottom: 12px;display:flex;flex-direction: column;width: 250px">
                            <div style=" display: flex;flex-direction: row ;position: relative">
                                <div id="usernamecontainer" style=" box-shadow: 0px 0px 0px 0px rgba(0,0,0,0); display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                     padding-right: 10px; margin-bottom: 5px;width: 100%;height: 40px;align-items: center">
                                    <i class="fa-solid fa-user" style=" margin-right: 5px"></i>
                                    <input type="text" placeholder="Enter User Name" id="txtUserName"style="width: 90%; background: transparent  "   name="username"  required="true"/>

                                </div>
                                <label id="lblusernameerror" style="color: red; font-size: 13px;position: absolute;right: -180px;top: 10px">user name alredy exists</label>
                            </div>
                            <ul style=" font-size: 13px; position: relative;left: 20px;color:#57606f ">
                                <li>First Charactor must be capital</li>
                                <li>Don't use spaces</li>
                            </ul>

                        </div>




                        <div style="margin-bottom: 12px;display:flex;flex-direction: column;">

                            <div  id="firstnamecontainer" style=" position: relative;left: 10px; display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                  padding-right: 10px; margin-bottom: 5px;width:250px;height: 40px;align-items: center">
                                <i class="fa-regular fa-face-smile"style=" margin-right: 5px"></i>

                                <input type="text" placeholder="Enter First Name" id="txtFirstName"style="width: 90%; background: transparent "  class="row form-control m-2" name="firstname"  required="true"/>

                            </div>
                            <div id="lastnamecontainer" style="position: relative;left: 10px;  display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                 padding-right: 10px; margin-bottom: 5px;width: 250px;height: 40px;align-items: center">
                                <i class="fa-regular fa-face-smile"style=" margin-right: 5px"></i>

                                <input type="text" placeholder="Enter Last Name"id="txtLastName" name="lastname"required="true" style="background: transparent"/>
                            </div>
                            <ul style=" font-size: 13px; position: relative;left: 30px;color:#57606f ">
                                <li>Must be First Charactor Capital</li>
                                <li>Don't use number or any special numbers</li>
                            </ul>

                        </div>
                        <div style="display:flex;flex-direction: column;width: 250px">
                            <div style=" display: flex;flex-direction: row ;position: relative">
                                <div id="niccontainer" style=" display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                     padding-right: 10px; margin-bottom: 5px;width: 100%;height: 40px;align-items: center">
                                    <i class="fa-solid fa-file"style=" margin-right: 5px"></i>

                                    <input type="text" placeholder="Enter NIC" id="txtNic"required="true" name="nic" style="width: 90%; background: transparent "/>

                                </div>
                                <label id="lblNic" style="color: red; font-size: 13px;position: absolute;right: -150px;top: 10px">NIC alredy exists</label>
                            </div>


                        </div>



                        <div style="margin-bottom: 12px;display:flex;flex-direction: column;">

                            <div id="addresscontainer" style=" display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                 padding-right: 10px; margin-bottom: 5px;width: 250px;height: 40px;align-items: center">
                                <i class="fa-solid fa-house-chimney"style=" margin-right: 2px"></i>

                                <input type="text"  placeholder="Enter City" id="txtAddress" name="address" style="width: 90%;background: transparent  "   name="address"  required="true"/>

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
                                <div id="emailcontainer" style=" display: flex;flex-direction: row; border: 1px black solid;border-radius: 20px;  padding-left: 10px;
                                     padding-right: 10px; margin-bottom: 5px;width: 250px;height: 40px;align-items: center">
                                    <i class="fa-solid fa-envelope" style=" margin-right: 5px"></i>

                                    <input type="email" placeholder="Enter email" id="txtEmail" style="width: 90%;background: transparent  "   name="email"  required="true"/>

                                </div>
                                <label id="lblemail" style="color: red; font-size: 13px;position: absolute;right: -160px;top: 10px">email alredy exists</label>
                            </div>


                        </div>
                        <div  style="display: flex;flex-direction: column;align-items: center;width: 100%" >
                            <button id="btnUpdateUser" type="button" style="color: white; width: 90%; position: relative; left: -1px; text-align: center; border: none;outline: none;margin-top: 25px; padding-top: 10px;padding-bottom: 10px;border-radius: 20px;font-size: 17px; background-color: #1e3799" >UPDATE</button>
                        </div>

                    </form>
                </div>
            </div>
        </main>
        <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#lblusernameerror').hide();
                $("#lblNic").hide();
                $('#lblemail').hide();
                $('#lblerrormsg').hide();



                $('#txtUserName').on('change past keyup', function () {


                    var data = {username: $('#txtUserName').val(), type: ""};
                    const regex = /^[A-Z][a-zA-Z]+$/;
                    checkAvailableUserName(data)
                    if (regex.test(data.username)) {
                        $('#usernamecontainer').css('borderColor', 'green');
                        $('#usernamecontainer').css('box-shadow', '1px 1px 3px green');
                    } else {
                        $('#usernamecontainer').css('borderColor', 'red');
                        $('#usernamecontainer').css('box-shadow', '1px 1px 3px red');
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
                                $('#niccontainer').css('borderColor', 'red');
                                $('#niccontainer').css('box-shadow', '1px 1px 3px red');
                                $("#lblNic").show();
                            } else {
                                $('#niccontainer').css('borderColor', 'green');
                                $('#niccontainer').css('box-shadow', '1px 1px 3px green');
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

                                $('#emailcontainer').css('borderColor', 'red');
                                $('#emailcontainer').css('box-shadow', '1px 1px 3px red');
                                $("#lblemail").show();
                            } else {
                                $('#emailcontainer').css('borderColor', 'green');
                                $('#emailcontainer').css('box-shadow', '1px 1px 3px green');
                                $("#lblemail").hide();
                            }

                        },
                        error: function (erro) {

                        }
                    })
                });


                $('#txtFirstName').on('keyup change past', function () {

                    const regex = /^[A-Z][a-zA-Z]+$/;
                    if (regex.test($('#txtFirstName').val())) {
                        $('#firstnamecontainer').css('borderColor', 'green');
                        $('#firstnamecontainer').css('box-shadow', '1px 1px 3px green');
                    } else {
                        $('#firstnamecontainer').css('borderColor', 'red');
                        $('#firstnamecontainer').css('box-shadow', '1px 1px 3px red');
                    }
                });


                $('#txtLastName').on('keyup change past', function () {


                    const regex = /^[A-Z][a-zA-Z]+$/;
                    if (regex.test($('#txtLastName').val())) {
                        $('#lastnamecontainer').css('borderColor', 'green');
                        $('#lastnamecontainer').css('box-shadow', '1px 1px 3px green');
                    } else {
                        $('#lastnamecontainer').css('borderColor', 'red');
                        $('#lastnamecontainer').css('box-shadow', '1px 1px 3px red');
                    }
                });

                $('#txtAddress').on('keyup change past', function () {


                    const regex = /^[A-Z][a-zA-Z]+$/;
                    if (regex.test($('#txtAddress').val())) {
                        $('#addresscontainer').css('borderColor', 'green');
                        $('#addresscontainer').css('box-shadow', '1px 1px 3px green');
                    } else {
                        $('#addresscontainer').css('borderColor', 'red');
                        $('#addresscontainer').css('box-shadow', '1px 1px 3px red');
                    }
                });


                $('#btnUpdateUser').click(function () {
                    updateUser();
                })




            });

            function updateUser() {





                var data = {
                    username: $('#txtUserName').val(),
                    firstname: $('#txtFirstName').val(),
                    lastname: $('#txtLastName').val(),
                    nic: $('#txtNic').val(),
                    address: $('#txtAddress').val(),
                    dob: $('#txtDOB').val(),
                    email: $('#txtEmail').val(),

                }

                $.ajax({
                    type: "post",
                    url: "http://localhost:8080/login/dashboard",
                    data: data,
                    success: function (msg) {

                        if (msg == 'true') {
                            $('#errortext').text("USER UPDATE SUCCESS");

                            $('#errorsubtext').text('Your are login now dashboard');
                            $('#lblerrocontainer').css('border-left', '5px green solid')
                            $('#errorimg').attr('src', './assets/css/success.png');
                            $('#lblerrormsg').show();
                            setTimeout(setTimerSucces, 2000);
                        } else if (msg == 'false') {
                            $('#errortext').text("FAIL TO UPDATE");
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
                            $("#lblusernameerror").hide();
                            return true;
                        } else {
                            $("#lblusernameerror").show();
                            return false;
                        }
                    }
                });
            }
        </script>
    </body>
</html>
