<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
            <title>ȸ�� ���� ���â</title>
            <link rel="stylesheet" href="./assets/css/board.css">
            <link rel="stylesheet" href="./assets/css/board_menu.css">
                <script type="text/javascript">
                    var newName,
                        n = 0;
                    var popleft,
                        n = 100;
                    // �˾� â ���� ����� �Լ�(���� �˾��� ����..)
                    function newWindow(value) {
                        n = n + 1;
                        newName = value + n;
                    }
                    // �˾� â ��ġ
                    function locationWindow(value) {
                        n = n + 10;
                        popleft = value + n;
                    }
                </script>
                </head>
                <body>
                    <section class="notice">
                        <div class="page-title">
                            <div class="container" OnClick="location.href ='./intro.html' " style="cursor:pointer;">
                                <h3>MOME Community</h3>
                            </div>
                        </div>
                        <!-- board menu area -->
                        <div class="container">
                            <ul>
                                <li><a href="./intro.html">������ ���ư���</a></li>
                                <li><a href="#">�����ϱ�</a></li>
                                <li><a onclick="window.open('./chat.jsp',newName, 'width=630, height=750, left=100, top=150, location=no, status=no, scrollbars=no')" style="cursor:pointer;">ä���ϱ�</a></li>
                                <li><a href="#">Blog</a></li>
                            </ul>
                        </div>
                        <!-- board seach area -->
                        <div id="board-search">
                            <div class="container">
                                <div class="search-window">
                                    <div
                                        class="search-wrap">
                                        <!-- �˻� -->
                                        <form action="${pageContext.request.contextPath}/mem3.do">
                                            <select name="action" class="select">
                                                <option value="listMembers">��ü</option>
                                                <option value="selectMemberById">���̵�</option>
                                                <option value="selectMemberByPwd">����</option>
                                            </select>
                                            <input type="text" name="value"/>
                                            <input id="search" type="submit" class="btn btn-dark" name="" placeholder="�˻�� �Է����ּ���." value="�˻�"></form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- board list area -->
                            <div id="board-list">
                                <div class="container">
                                    <table class="board-table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="th-num">��ȣ</th>
                                                <th scope="col" class="th-title">����</th>
                                                <th scope="col" class="th-writer">�ۼ���</th>
                                                <th scope="col" class="th-date">�����</th>
                                            </tr>
                                        </thead>
                                        <c:forEach var="member" items="${membersList }">
                                            <tr align="center">
                                                <td>${member.articleNo }</td>
                                                <td>${member.title }</td>
                                                <td>${member.name }</td>
                                                <td>${member.joinDate }</td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                    <a class="class1" href="${contextPath}/shi/articleForm.jsp">
                                        <p class="class2">�۾���</p>
                                    </a>
                                </body>
                            </html>