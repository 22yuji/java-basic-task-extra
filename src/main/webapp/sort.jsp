<%@ page import="java.util.Arrays"%>
<%@ page import="util.MainTask"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎課題</title>
</head>
<body>
<%
// 値を取得
String stock = (String) session.getAttribute("stock");
out.println(stock);
out.println("<br>");

// カンマ区切りの文字列を分解
String[] src = new String[0];
if (stock != null) {
    src = stock.split(",");
}

// 文字列の配列を数値の配列に変換
int[] array = MainTask.toIntArray(src);

// 入力された値がそのままの順番で表示される
out.println(Arrays.toString(array));
out.println("<br>");

// ヒープソート
MainTask.heapSort(array);

// 入力された値が昇順で表示される
out.println(Arrays.toString(array));
out.println("<br>");
%>
<div style="margin-top: 50px">
  <a href="index.jsp">戻る</a>
</div>
</body>
</html>