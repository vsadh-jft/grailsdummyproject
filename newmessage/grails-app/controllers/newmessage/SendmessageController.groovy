package newmessage

import grails.plugin.springsecurity.annotation.Secured
import newmessageapp.Message
import newmessageapp.User

@Secured(['ROLE_USER'])

class SendmessageController {
    transient  springSecurityService;

    def index() {


            def userlist = User.findAll().username


        render (view: '/sendmessage/sendmessage', model: [ userlist : userlist])

    }

    def send()
    {
        println  springSecurityService.currentUser
Message m = new Message(touser: params.userlist , fromuser: springSecurityService.currentUser.username,messcontent: params.messcontent
,date: new Date())
        m.save(failOnError: true,flush: true)

        render (view: '/sendmessage/messagesent', model: [ message:"Message sent to ",to:params.userlist])

    }
}
