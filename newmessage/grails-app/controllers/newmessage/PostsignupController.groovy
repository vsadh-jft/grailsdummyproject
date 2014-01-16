package newmessage

import grails.plugin.springsecurity.annotation.Secured
import newmessageapp.Role
import newmessageapp.User
import newmessageapp.UserRole
@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class PostsignupController {




    def index() {


        println "================"+params

      Role role=Role.findByAuthority('ROLE_USER')

        def user1 = new User(username:params.username,password:params.password)
        if(!user1.validate()){
            println "============================"+user1.errors
        }else{
            println "================testing"
            user1.save(flush: true)
        }

        UserRole.create(user1, role, true)
        render (view: "/postsignup/postsignup.gsp", model: [user:user1.username] )






    }
}
