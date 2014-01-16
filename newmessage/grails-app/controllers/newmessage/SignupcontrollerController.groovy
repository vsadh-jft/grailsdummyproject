package newmessage

import grails.plugin.springsecurity.annotation.Secured

class SignupcontrollerController {
    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def index() {
render view: '/signupcontroller/index.gsp'
    }
}
