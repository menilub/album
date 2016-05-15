
<%@ page import="com.opentunities.model.Photo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'photo.label', default: 'Photo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-photo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-photo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="bytes" title="${message(code: 'photo.bytes.label', default: 'Bytes')}" />
					
						<g:sortableColumn property="created_at" title="${message(code: 'photo.created_at.label', default: 'Createdat')}" />
					
						<g:sortableColumn property="etag" title="${message(code: 'photo.etag.label', default: 'Etag')}" />
					
						<g:sortableColumn property="format" title="${message(code: 'photo.format.label', default: 'Format')}" />
					
						<g:sortableColumn property="height" title="${message(code: 'photo.height.label', default: 'Height')}" />
					
						<g:sortableColumn property="public_id" title="${message(code: 'photo.public_id.label', default: 'Publicid')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${photoInstanceList}" status="i" var="photoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${photoInstance.id}">${fieldValue(bean: photoInstance, field: "bytes")}</g:link></td>
					
						<td><g:formatDate date="${photoInstance.created_at}" /></td>
					
						<td>${fieldValue(bean: photoInstance, field: "etag")}</td>
					
						<td>${fieldValue(bean: photoInstance, field: "format")}</td>
					
						<td>${fieldValue(bean: photoInstance, field: "height")}</td>
					
						<td>${fieldValue(bean: photoInstance, field: "public_id")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${photoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
