<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-27
  Time: 오후 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
        <title>파일 업로드 정보 출력하기</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<form action="fileUpload02_process.jsp" method="post" enctype="multipart/form-data">
    <label for="user-name">이름 : </label>
    <input type="text" id="user-name" name="userName"><br>
    <label for="subject">제목 : </label>
    <input type="text" id="subject" name="subject"><br>
    <label for="file">파일 : </label>
    <input type="file" id="file" name="file"><br>
    <button type="submit">파일 업로드</button>
</form>
</body>
</html>
