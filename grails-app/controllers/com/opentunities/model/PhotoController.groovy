package com.opentunities.model

import com.opentunities.UploadReturn
import grails.converters.JSON
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PhotoController {

    def cloudinaryService

//    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def upload(){
        String fileLabel = params.fileLabel
        MultipartFile uploadedFile = null
        String fileName = ""
        UploadReturn uploadReturn = new UploadReturn()
//        Photo.list().each { Photo photo->
//            uploadReturn.initialPreview << "<img src='${photo.url}' class='file-preview-image'>"
//        }
        def ret
        try{
            if (request instanceof MultipartHttpServletRequest) {
                request.getFiles("upload_file[]").each { MultipartFile file ->
                    //Get the file's name from request
                    fileName = file.getName()
//                    fileName = request.getFileNames()[0]
                    //Get a reference to the uploaded file.
//                    uploadedFile = request.getFile(fileName)

                    log.debug("File name : ${file.originalFilename}")
                    log.debug("File size : ${file.size}")
                    log.debug("File label : ${fileLabel}")
                    if (file.empty) {
                        flash.error = g.message(code: '', default: 'Empty cannot be uploaded')
                        return
                    }
                    ret = cloudinaryService.upload(file.bytes)
                    Photo photo = new Photo(ret)
                    photo.save()
//                    uploadReturn.initialPreview << "<img src='${photo.url}' class='file-preview-image'>"
                }
            }
        }
        catch (Exception e){
            flash.error = g.message(code:'',default: 'File upload failed due to internal errors. Please try again')
            render uploadReturn as JSON

        }
        render uploadReturn as JSON
    }

    def index(Integer max) {
        String htmlContent = g.render([template: "album"])

        Map responseData = [htmlContent: htmlContent, message1: "Hello", additionalData: "Just an example"]

        render(responseData as JSON)
    }

    def show(Photo imageInstance) {
        respond imageInstance
    }

    def create() {
        respond new Photo(params)
    }

    @Transactional
    def save(Photo imageInstance) {
        if (imageInstance == null) {
            notFound()
            return
        }

        if (imageInstance.hasErrors()) {
            respond imageInstance.errors, view:'create'
            return
        }

        imageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'image.label', default: 'Image'), imageInstance.id])
                redirect imageInstance
            }
            '*' { respond imageInstance, [status: CREATED] }
        }
    }

    def edit(Photo imageInstance) {
        respond imageInstance
    }

    @Transactional
    def update(Photo imageInstance) {
        if (imageInstance == null) {
            notFound()
            return
        }

        if (imageInstance.hasErrors()) {
            respond imageInstance.errors, view:'edit'
            return
        }

        imageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Image.label', default: 'Image'), imageInstance.id])
                redirect imageInstance
            }
            '*'{ respond imageInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Photo photoInstance) {

        if (photoInstance == null) {
            notFound()
            return
        }
        cloudinaryService.delete(photoInstance.public_id)
        photoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Image.label', default: 'Image'), photoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    def deleteAll(){
        def all = Photo.list()
        all.each { Photo photoInstance->
            cloudinaryService.delete(photoInstance.public_id)
            photoInstance.delete flush:true
        }
    }

    def about(){
        render(view: "about")
        return
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
