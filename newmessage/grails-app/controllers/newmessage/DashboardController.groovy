package newmessage

import grails.plugin.springsecurity.annotation.Secured
import newmessageapp.Message
import newmessageapp.User

@Secured(['ROLE_USER'])
class DashboardController {
    transient  springSecurityService;
    def index() {

def message = Message.findAllByTouserOrFromuser(springSecurityService.currentUser.username.toString(),
        springSecurityService.currentUser.username.toString())



        println message




        render (view : '/dashboard/dashboard', model:[ message: message])



    }
}
