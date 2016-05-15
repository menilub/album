
<%@ page import="com.opentunities.model.Photo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'photo.label', default: 'Photo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-photo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-photo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list photo">
			
				<g:if test="${photoInstance?.bytes}">
				<li class="fieldcontain">
					<span id="bytes-label" class="property-label"><g:message code="photo.bytes.label" default="Bytes" /></span>
					
						<span class="property-value" aria-labelledby="bytes-label"><g:fieldValue bean="${photoInstance}" field="bytes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.created_at}">
				<li class="fieldcontain">
					<span id="created_at-label" class="property-label"><g:message code="photo.created_at.label" default="Createdat" /></span>
					
						<span class="property-value" aria-labelledby="created_at-label"><g:formatDate date="${photoInstance?.created_at}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.etag}">
				<li class="fieldcontain">
					<span id="etag-label" class="property-label"><g:message code="photo.etag.label" default="Etag" /></span>
					
						<span class="property-value" aria-labelledby="etag-label"><g:fieldValue bean="${photoInstance}" field="etag"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.format}">
				<li class="fieldcontain">
					<span id="format-label" class="property-label"><g:message code="photo.format.label" default="Format" /></span>
					
						<span class="property-value" aria-labelledby="format-label"><g:fieldValue bean="${photoInstance}" field="format"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.height}">
				<li class="fieldcontain">
					<span id="height-label" class="property-label"><g:message code="photo.height.label" default="Height" /></span>
					
						<span class="property-value" aria-labelledby="height-label"><g:fieldValue bean="${photoInstance}" field="height"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.public_id}">
				<li class="fieldcontain">
					<span id="public_id-label" class="property-label"><g:message code="photo.public_id.label" default="Publicid" /></span>
					
						<span class="property-value" aria-labelledby="public_id-label"><g:fieldValue bean="${photoInstance}" field="public_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.resource_type}">
				<li class="fieldcontain">
					<span id="resource_type-label" class="property-label"><g:message code="photo.resource_type.label" default="Resourcetype" /></span>
					
						<span class="property-value" aria-labelledby="resource_type-label"><g:fieldValue bean="${photoInstance}" field="resource_type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.secure_url}">
				<li class="fieldcontain">
					<span id="secure_url-label" class="property-label"><g:message code="photo.secure_url.label" default="Secureurl" /></span>
					
						<span class="property-value" aria-labelledby="secure_url-label"><g:fieldValue bean="${photoInstance}" field="secure_url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.signature}">
				<li class="fieldcontain">
					<span id="signature-label" class="property-label"><g:message code="photo.signature.label" default="Signature" /></span>
					
						<span class="property-value" aria-labelledby="signature-label"><g:fieldValue bean="${photoInstance}" field="signature"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="photo.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${photoInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="photo.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${photoInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.width}">
				<li class="fieldcontain">
					<span id="width-label" class="property-label"><g:message code="photo.width.label" default="Width" /></span>
					
						<span class="property-value" aria-labelledby="width-label"><g:fieldValue bean="${photoInstance}" field="width"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:photoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${photoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
