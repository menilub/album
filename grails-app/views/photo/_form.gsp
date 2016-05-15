<%@ page import="com.opentunities.model.Photo" %>



<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'bytes', 'error')} required">
	<label for="bytes">
		<g:message code="photo.bytes.label" default="Bytes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="bytes" type="number" value="${photoInstance.bytes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'created_at', 'error')} required">
	<label for="created_at">
		<g:message code="photo.created_at.label" default="Createdat" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="created_at" precision="day"  value="${photoInstance?.created_at}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'etag', 'error')} required">
	<label for="etag">
		<g:message code="photo.etag.label" default="Etag" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="etag" required="" value="${photoInstance?.etag}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'format', 'error')} required">
	<label for="format">
		<g:message code="photo.format.label" default="Format" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="format" required="" value="${photoInstance?.format}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'height', 'error')} required">
	<label for="height">
		<g:message code="photo.height.label" default="Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="height" type="number" value="${photoInstance.height}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'public_id', 'error')} required">
	<label for="public_id">
		<g:message code="photo.public_id.label" default="Publicid" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="public_id" required="" value="${photoInstance?.public_id}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'resource_type', 'error')} required">
	<label for="resource_type">
		<g:message code="photo.resource_type.label" default="Resourcetype" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="resource_type" required="" value="${photoInstance?.resource_type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'secure_url', 'error')} required">
	<label for="secure_url">
		<g:message code="photo.secure_url.label" default="Secureurl" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="secure_url" required="" value="${photoInstance?.secure_url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'signature', 'error')} required">
	<label for="signature">
		<g:message code="photo.signature.label" default="Signature" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="signature" required="" value="${photoInstance?.signature}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="photo.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${photoInstance?.type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="photo.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="url" required="" value="${photoInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'width', 'error')} required">
	<label for="width">
		<g:message code="photo.width.label" default="Width" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="width" type="number" value="${photoInstance.width}" required=""/>

</div>

