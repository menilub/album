<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Album</title>
</head>

<body>
<div>
    <input id="input-id" type="file" multiple name="upload_file[]" class="file" data-preview-file-type="text">
</div>

<div>
</div>

<div id="album">
    <g:render template="/photo/album"/>
</div>
<script type="text/javascript">
    var photosUrl = '${createLink(controller:'photo', action:'index')}';
    var uploadUrl = '${createLink(controller:'photo', action:'upload')}';
    $("#input-id").fileinput({
        showUpload: true,
        uploadAsync: false,
        maxFileCount: 5,
        previewFileType: 'any',
        showUploadedThumbs: false,
        uploadUrl: uploadUrl
    });

    $('#input-id').on('filebatchuploadsuccess', function (event, data, previewId, index) {
        var form = data.form, files = data.files, extra = data.extra,
                response = data.response, reader = data.reader;
        //console.log('File batch pre upload');
        $.ajax({
            url: photosUrl,
            success: function (data) {
                $("#album").html(data.htmlContent);
//                $("#my-alert").text(data.message1);
                $('#input-id').fileinput('reset');
            }
        });
    });

    function reset() {
        $.ajax({
            url: photosUrl,
            success: function (data) {
                $("#album").html(data.htmlContent);
//                $("#my-alert").text(data.message1);
                $('#input-id').fileinput('reset');
            }
        });
    }
</script>
</body>
</html>
