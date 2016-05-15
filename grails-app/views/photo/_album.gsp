<div>
    <g:each in="${com.opentunities.model.Photo.list()}" var="photo" status="i">
        <g:if test="${i==0 || i%4 ==0}">
            <div class="row jumbotron">
        </g:if>
        <div class="col-md-3" id="${photo.public_id}">
            <div>
            <a href="${photo.url}" class="thumbnail">
                %{--<p>Pulpit Rock: A famous tourist attraction in Forsand, Ryfylke, Norway.</p>--}%
                <img src="${photo.url}" alt="Pulpit Rock" style="width:auto;height:150px">
            </a>
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