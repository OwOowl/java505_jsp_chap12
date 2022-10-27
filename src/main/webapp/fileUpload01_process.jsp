<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-27
  Time: 오전 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>파일 업로드</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String fileUploadPath = "C:\\java505\\upload";

    DiskFileUpload upload = new DiskFileUpload();
    List items = upload.parseRequest(request);
//    반복 가능한 객체로 생성
    Iterator param = items.iterator();

//    hasNext() : 다음 데이터가 존재하는지 확인
    while (param.hasNext()) {
//        next() : 다음 데이터를 가져옴
        FileItem fileItem = (FileItem)param.next();


        if(!fileItem.isFormField()) {
            String fileName = fileItem.getName();
            fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
//            저장할 전체경로와 파일이름 설정
            File file = new File(fileUploadPath + "/" + fileName);
//            실제 파일 저장
            fileItem.write(file);
        }
    }
%>
</body>
</html>
