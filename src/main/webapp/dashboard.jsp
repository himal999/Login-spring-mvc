<%-- 
    Document   : dashboard
    Created on : Oct 27, 2022, 5:56:01 PM
    Author     : himal
--%>

<%@page import="edu.epic.login.entity.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Dashboard</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
    </head>
    <body class="vh-100 vw-100 d-flex position-relative flex-column align-items-center">
        <%

            //checking session 
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            response.setHeader("Expires", "0");

            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            } else {

                User user = (User) session.getAttribute("user");

            }


        %>
        <div id="lblerrormsg" style=" z-index: 20; width:100%;height: auto;position: absolute;display: flex;flex-direction: column;justify-content: right;align-items:end">
            <div id="lblerrocontainer" style=" background-color: white; border-left: 5px red solid; padding: 10px; display: flex;flex-direction: row;justify-content: center;align-items: center">
                <img id="errorimg" src="./assets/css/faild.png" alt="alt" width="55px" height="40px"/>
                <div style=" margin-left: 5px">
                    <h5 id="errortext">LOGIN FAILD</h5>
                    <p id='errorsubtext' style=" font-size: 14px">Invalid User Name or Password</p>
                </div>

            </div>
        </div>
        <div  class="col-6 vw-100  position-relative d-flex justify-content-between align-items-center ms-auto bg-primary">
            <h1 class="text-start text-light row m-2">Hello  ${username} !</h1>
            <div class="d-flex flex-row ">
                <form>
                    <button type="button" class=" btn btn-danger m-2" id="btnlogout">Logout</button>
                </form>
            </div>
        </div>
        <div class="col d-flex position-relative flex-column justify-content-center align-items-center">
            <div style="width: 100%; display: flex;flex-direction: row; justify-content: flex-end;align-items: flex-end">
                <a href="http://localhost:8080/login-spring-mvc/report" target="_blank" style=" cursor: pointer" > Download Account Summary</a>
                
            </div>
            <table class="table">
                <thead>
                    <tr >

                        <th scope="col">Name</th>
                        <th scope="col">NIC</th>
                        <th scope="col">Address</th>
                        <th scope="col">DOB</th>
                        <th scope="col">Email</th>
                        <th scope="col">User Name</th>

                        <th scope="col">Action</th>

                    </tr>
                </thead>
                <tbody>

                    <tr>
                        <td><c:out value="${user.getFname()}"/>&nbsp;<c:out value="${user.getLname()}"/></td>
                        <td><c:out value="${user.getNic()}"/></td>
                        <td><c:out value="${user.getAddress()}"/></td>
                        <td><c:out value="${user.getDob()}"/></td>
                        <td><c:out value="${user.getEmail()}"/></td>
                        <td><c:out value="${user.getUsername()}"/></td>

                        <td><a href="http://localhost:8080/login-spring-mvc/update.jsp" class=" btn btn-primary m-2">Edit</a><button id="btnDelete" class="btn btn-warning">Delete</button></td>



                    </tr>


                </tbody>
            </table>








        </div>



        <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
        <script type="text/javascript">

            $(document).ready(function () {
                $('#lblerrormsg').hide();
            });

//            $('#lblReport').click(function(){
//               $.ajax({
//                        type: "GET",
//                        url: "http://localhost:8080/login-spring-mvc/report",
//                      
//                    });
//                
//            });


            $('#btnDelete').click(function () {


                if (confirm("Are you sure want to delete account?")) {
                    $.ajax({
                        type: "GET",
                        url: "http://localhost:8080/login-spring-mvc/drop",
                        success: function (msg) {

                            if (msg.data == true) {

                                $('#errortext').text("USER DELETE SUCCESS");

                                $('#errorsubtext').text('Your are login out now ');
                                $('#lblerrocontainer').css('border-left', '5px green solid')
                                $('#errorimg').attr('src', 'https://hrdevelopmentinfo.com/wp-content/uploads/2021/08/correct.png');
                                $('#lblerrormsg').show();
                                setTimeout(setTimerSucces, 2000);

                            } else {
                                $('#errortext').text("FAILED TO DELETE");
                                $('#errorsubtext').text('Please try again');
                                $('#lblerrocontainer').css('border-left', '5px red solid')
                                $('#errorimg').attr('src', 'https://image.similarpng.com/very-thumbnail/2020/09/Incorrect-sign-icon-on-transparent-background-PNG.png');
                                $('#lblerrormsg').show();
                                setTimeout(setTimerErro, 2000);
                            }


                        },
                        error: function (err) {
                            $('#errortext').text("FAILED TO DELETE");
                            $('#errorsubtext').text('Please try again');
                            $('#lblerrocontainer').css('border-left', '5px red solid')
                            $('#errorimg').attr('src', 'https://image.similarpng.com/very-thumbnail/2020/09/Incorrect-sign-icon-on-transparent-background-PNG.png');
                            $('#lblerrormsg').show();
                            setTimeout(setTimerErro, 2000);
                        },
                    });
                }


            });
            $('#btnlogout').click(function () {
                if (confirm("Are you sure want to logout?")) {
                    $.ajax({
                        type: "get",
                        url: "http://localhost:8080/login-spring-mvc/exit",
                        success: function (msg) {

                            if (msg.data == true) {
                                $('#errortext').text("LOGOUT SUCCESS");

                                $('#errorsubtext').text('Your are logout now ');
                                $('#lblerrocontainer').css('border-left', '5px green solid')
                                $('#errorimg').attr('src', 'https://hrdevelopmentinfo.com/wp-content/uploads/2021/08/correct.png');
                                $('#lblerrormsg').show();
                                setTimeout(setTimerSucces, 2000);
                            } else {
                                $('#errortext').text("FAILED TO LOGOUT");
                                $('#errorsubtext').text('Please try again');
                                $('#lblerrocontainer').css('border-left', '5px red solid')
                                $('#errorimg').attr('src', 'https://image.similarpng.com/very-thumbnail/2020/09/Incorrect-sign-icon-on-transparent-background-PNG.png');
                                $('#lblerrormsg').show();
                                setTimeout(setTimerErro, 2000);
                            }
                        },
                        error: function (err) {
                            $('#errortext').text("FAILED TO LOGOUT");
                            $('#errorsubtext').text('Please try again');
                            $('#lblerrocontainer').css('border-left', '5px red solid')
                            $('#errorimg').attr('src', 'https://image.similarpng.com/very-thumbnail/2020/09/Incorrect-sign-icon-on-transparent-background-PNG.png');
                            $('#lblerrormsg').show();
                            setTimeout(setTimerErro, 2000);
                        }

                    })
                }
            })
            function setTimerErro() {


                $("#lblerrormsg").hide();
            }
            function setTimerSucces() {


                $("#lblerrormsg").hide();
                window.location.href = "index.jsp";
            }

        </script>
    </body>
</html>
