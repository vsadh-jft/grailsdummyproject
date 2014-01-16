import newmessageapp.Role
import newmessageapp.User
import newmessageapp.UserRole

class BootStrap {

    def init = { servletContext ->

        def adminRole = new Role(authority:'ROLE_ADMIN').save(flush:true)
        def userRole = new Role(authority:'ROLE_USER').save(flush:true)

        def admin = new User(username:'admin',password:'admin').save(flush:true)
        def neeraj = new User(username:'neeraj',password:'bhatt').save(flush:true)
        UserRole.create(admin, adminRole, true)
        UserRole.create(neeraj, adminRole, true)



    }
    def destroy = {
    }
}
