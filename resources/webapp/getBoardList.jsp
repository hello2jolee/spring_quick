<%@ page import="java.util.List" %>
<%@ page import="com.springbook.biz.board.impl.BoardDAO" %>
<%@ page import="com.springbook.biz.board.BoardVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	BoardVO vo = new BoardVO();
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> boardList = boardDAO.getBoardList(vo);
%>

<!DOCTYPE html>
<html>
<head>
	<title>글 목록 </title>
</head>
<body style="margin:0 auto; text-align="center">
	<h1>글 목록 </h1>
	<h3>테스트님 환영합니다... <a href="logout_proc.jsp">Log-out</a></h3>
	
	<form action="getBoardList.jsp" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="700">
		<tr>
		<td text-align="right">
			<select name="searchCondition">
				<option value="title">제목 </option>
				<option value="content">내용 </option>
			</select>
			<input name="searchKeyword" type="text"/>
			<input type="submit" value="검색">
		</td>
		</tr>
		</table>
	</form>
	
	<table border="1" cellpadding="0" cellsapcing="0" width="700">
		<tr>
		<th background-color="orange" width="100">번호</th>
		<th background-color="orange" width="200">제목</th>
		<th background-color="orange" width="150">작성자</th>
		<th background-color="orange" width="150">등록일</th>
		<th background-color="orange" width="100">조회수</th>
		</tr>
		
		<% for(BoardVO board : boardList) { %>
		<tr>
			<td><%= board.getSeq() %></td>
			<td text-align="left"><a href="getBoard.jsp?seq=<%=board.getSeq() %>"><%= board.getTitle() %></a></td>
			<td><%= board.getWriter() %></td>
			<td><%= board.getRegDate() %></td>
			<td><%= board.getCnt() %></td>
		</tr>
		<%  }%>
	</table>
	<br>
	<a href="insertBoard.jsp">새글 등</a>
</body>
</html>