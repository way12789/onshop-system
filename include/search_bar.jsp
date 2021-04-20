<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="childNav">
	<div class="wrap">
		<ul class="clearfix">
			<li class="first"><a href="javascript:searchHot('外套')">外套</a></li>
			<li><a href="javascript:searchHot('套装')">套装</a></li>
			<li><a href="javascript:searchHot('裤子')">裤子</a></li>
			<li><a href="javascript:searchHot('上装')">上装</a></li>
			<li><a href="javascript:searchHot('卫衣')">卫衣</a></li>
			<li><a href="javascript:searchHot('袜子')">袜子</a></li>
			<li><a href="javascript:searchHot('内裤')">内裤</a></li>
			<li><a href="javascript:searchHot('文胸')">文胸</a></li>
			<li><a href="javascript:searchHot('职业装')">配件</a></li>
			<li><a href="javascript:searchHot('流行服饰')">流行服饰</a></li>
			<li><a href="javascript:searchHot('特色服饰')">特色服饰</a></li>
			<li class="last"><input type="text" id="selectname" value="${search_words }" /><a href="javascript:selectname()" >&nbsp;&nbsp;搜索</a></li>
		</ul>
	</div>
</div>