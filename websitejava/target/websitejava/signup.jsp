
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Document</title>
  <link rel="stylesheet" href="assets/index-6cce4695.css">
</head>
<body class="bg-black">
 <%@include file="WEB-INF/jspf/signupheader.jspf" %>
    <div class="">

        <div id="we" class="relative">
    
            
            <!-- <h1 id="" >Designed By Ritik</h1> -->
            <div class="absolute z-[10] right-0">
              <div class=" min-h-[100vh] md:max-w-[100vw]  background flex flex-col md:justify-center md:items-end  ">
                <div class="flex flex-col p-4 md:absolute md:w-[40rem]  md:pr-[10rem] md:mt-[5rem] mt-[8rem]" id="contact">
                    <form method="post" action="signup.jsp" id="form">
                      <h1 class="font-bold text-3xl mb-3 text-white">Signup</h1>
                      <div class="mb-3 flex flex-col md:items-center md:flex-row md:justify-between space-y-2">
                        <input type="text" placeholder="First_Name"  name="first" class="md:w-full md:mt-[0.5rem] border-2 pl-2 outline-red-600 rounded-lg h-[4rem] border-black/10">
                        <input type="text" placeholder="Last_Name" name="last" class="border-2 md:w-full pl-2 md:ml-[1rem] h-[4rem] rounded-lg outline-red-600 border-black/10">
                      </div>
                      <div class="my-3 ">
                        <input type="text" name="email" placeholder="Email address" class="border-2 pl-2 outline-red-600 w-full h-[4rem] rounded-lg border-black/10">
                      </div>
                      <div class="my-3 ">
                        <input type="text" placeholder="password" name="password" class="border-2 pl-2 outline-red-600 w-full h-[4rem] rounded-lg border-black/10">
                      </div>
                      <div class="my-3 ">
                        <input type="text" placeholder="Repeat password" class="border-2 pl-2 outline-red-600 w-full h-[4rem] rounded-lg border-black/10">
                      </div>
                      <button type="submit" class="mt-2 w-fit  p-2 text-center pl-4 pr-4 rounded-xl text-white text-xl bg-gradient-to-r from-green-400 to-blue-500 hover:from-pink-500 hover:to-yellow-500"  >Submit</button>
                    </form>
        
            </div>
        
                <!-- <img class="max-h-[100vh]  min-w-[100vw]" src="sarah-dorweiler-x2Tmfd1-SgA-unsplash.jpg" alt=""> -->
            </div>
            </div>
        </div>
    
    </div>

             <sql:setDataSource driver="com.mysql.jdbc.Driver" var="db" url="jdbc:mysql://localhost:3306/student" user="root" password="123456" />
         <c:choose>
             <c:when test="${not empty param.first
                                   && not empty param.last
                                   && not empty param.email
                                   && not empty param.password
                                   }">    
         <sql:update dataSource="${db}" var="newCitizen">
            INSERT INTO data(firstname, lastname, email, password,registredtime) VALUES (?, ?, ?, ?,now())
            <sql:param value="${param.first}" />
            <sql:param value="${param.last}" />
            <sql:param value="${fn:toLowerCase(param.email)}" />
            <sql:param value="${param.password}" />
        </sql:update>
                           <c:redirect url="login.jsp"></c:redirect>
            
             </c:when>
         </c:choose>



        <script src="lottie.js"></script>
        <script src="qw.js"></script>
</body>
</html>