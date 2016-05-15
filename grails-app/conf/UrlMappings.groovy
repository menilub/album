class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        name home :"/"(view:"/index")
        "500"(view:'/error')
	}
}
