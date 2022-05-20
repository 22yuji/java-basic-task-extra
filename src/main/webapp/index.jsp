<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// TODO: 基本課題の実装
String stock = "";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎課題</title>
</head>
<body>
<div>
  <p>数値をストックすることができます。<br>まとめてストックする場合はカンマ区切りで入力してください。</p>
  <form action="index.jsp" method="post">
    <input type="text" name="param">
    <div>
      <button type="submit" name="command" value="stock">ストックする</button>
      <button type="submit" name="command" value="sort">ソートする</button>
    </div>
  </form>
  <% if (!stock.isEmpty()) { %>
    <p>現在のストック：<%= stock %></p><br>
  <% } %>
</div>
</body>
</html>