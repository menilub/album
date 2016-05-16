<div>
    <g:each in="${com.opentunities.model.Photo.list()}" var="photo" status="i">
        <g:if test="${i==0 || i%4 ==0}">
            <div class="row jumbotron">
        </g:if>
        <div class="col-md-3" id="${photo.public_id}">
            <div class="well">
                <g:link controller="photo" action="show" id="${photo.id}">
                %{--<p>Pulpit Rock: A famous tourist attraction in Forsand, Ryfylke, Norway.</p>--}%
                %{--<img src="${photo.url}" style="width:150px;height:150px;object-fit: contain;">--}%
                    <cl:img id="${photo.public_id}" height="150" width="150" background="black" crop="pad" />

                </g:link>
            </div>
            <div>
                <g:remoteLink controller="photo" class="btn btn-primary" action="delete" id="${photo.id}" onSuccess="reset();">
                    <span class="glyphicon glyphicon-remove"></span>Delete
                </g:remoteLink>
            </div>
        </div>
        <g:if test="${i==3 || i%4 == 3}">
            </div>
        </g:if>

    </g:each>
</div>