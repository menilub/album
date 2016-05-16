<%@ page import="com.opentunities.model.Photo" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div class="row">
    <div class="col-md-6">
        <div class="well">
            <p>Height & Width 300px with pad and black background</p>
            <p>"Resize the image to fill the given width and height while retaining the original aspect ratio. If the proportions of the original image do not match the given width and height, padding is added to the image to reach the required size"</p>
        <cl:img id="${photoInstance.public_id}" height="300" width="300" background="black" crop="pad" />
        </div>
        <div class="well">
            <p>Scale to Width 300px. Height auto</p>
            <p>"Change the size of the image exactly to the given width and height without necessarily retaining the original aspect ratio: all original image parts are visible but might be stretched or shrunk."</p>
            <cl:img id="${photoInstance.public_id}" width="300" crop="scale" />
        </div>
        <div class="well">
            <p>Width 150, Height 150px in crop 'fill' mode</p>
            <p>"Create an image with the exact given width and height while retaining the original aspect ratio, using only part of the image that fills the given dimensions if necessary (only part of the original image might be visible if the requested aspect ratio is different from the original aspect ratio)."</p>            <cl:img id="${photoInstance.public_id}" width="200" height="200" crop="fill" />
        </div>
        <div class="well">
            <p>Generate a thumbnail (150px X 150px) using face detection in combination with the 'face' and 'faces' gravity.</p>
            <cl:img id="${photoInstance.public_id}" width="150" height="150" gravity="face" crop="thumb"/> <cl:img id="${photoInstance.public_id}" width="150" height="150" gravity="faces" crop="thumb"/>

        </div>
    </div>

    <div id="show-photo" class="col-md-6" style="word-wrap: break-word;">

        <ul class="list-group text-left">

            <g:if test="${photoInstance?.resource_type}">

                <li class="list-group-item">
                    <label><g:message code="photo.resource_type.label" default="resource_type"/></label>

                    <p><g:fieldValue bean="${photoInstance}" field="resource_type"/></p>
                </li>
            </g:if>


            <g:if test="${photoInstance?.format}">

                <li class="list-group-item">
                    <label><g:message code="photo.format.label" default="Format"/></label>

                    <p><g:fieldValue bean="${photoInstance}" field="format"/></p>
                </li>
            </g:if>

            <g:if test="${photoInstance?.height}">

                <li class="list-group-item">
                    <label><g:message code="photo.height.label" default="Height"/></label>

                    <p><g:fieldValue bean="${photoInstance}" field="height"/></p>
                </li>
            </g:if>

            <g:if test="${photoInstance?.width}">

                <li class="list-group-item">
                    <label><g:message code="photo.width.label" default="Width"/></label>

                    <p><g:fieldValue bean="${photoInstance}" field="width"/></p>
                </li>
            </g:if>

            <g:if test="${photoInstance?.bytes}">

                <li class="list-group-item">
                    <label><g:message code="photo.bytes.label" default="Bytes"/></label>

                    <p><g:fieldValue bean="${photoInstance}" field="bytes"/></p>
                </li>
            </g:if>

            <g:if test="${photoInstance?.created_at}">

                <li class="list-group-item">
                    <label><g:message code="photo.created_at.label" default="Createdat"/></label>
                    <p><g:formatDate date="${photoInstance?.created_at}"/></p>
                </li>
            </g:if>

            <g:if test="${photoInstance?.etag}">

                <li class="list-group-item">
                    <label><g:message code="photo.etag.label" default="Etag"/></label>

                    <p><g:fieldValue bean="${photoInstance}" field="etag"/></p>
                </li>
            </g:if>


            <g:if test="${photoInstance?.public_id}">

                <li class="list-group-item">
                    <label><g:message code="photo.public_id.label" default="public_id"/></label>

                    <p><g:fieldValue bean="${photoInstance}" field="public_id"/></p>
                </li>
            </g:if>

            <g:if test="${photoInstance?.url}">

                <li class="list-group-item">
                    <label><g:message code="photo.url.label" default="url"/></label>

                    <p><g:fieldValue bean="${photoInstance}" field="url"/></p>
                </li>
            </g:if>

            <g:if test="${photoInstance?.secure_url}">

                <li class="list-group-item">
                    <label><g:message code="photo.secure_url.label" default="secure_url"/></label>

                    <p><g:fieldValue bean="${photoInstance}" field="secure_url"/></p>
                </li>
            </g:if>


              <g:if test="${photoInstance?.signature}">

                <li class="list-group-item">
                    <label><g:message code="photo.signature.label" default="signature"/></label>

                    <p><g:fieldValue bean="${photoInstance}" field="signature"/></p>
                </li>
            </g:if>

             <g:if test="${photoInstance?.type}">

                <li class="list-group-item">
                    <label><g:message code="photo.type.label" default="type"/></label>

                    <p><g:fieldValue bean="${photoInstance}" field="type"/></p>
                </li>
            </g:if>

        </ul>

        <g:form url="[resource: photoInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons">
                <g:link class="edit" action="edit" resource="${photoInstance}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
                <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
