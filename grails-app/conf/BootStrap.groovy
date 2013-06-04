import org.apache.shiro.crypto.hash.Sha256Hash
import com.itgongfu.common.auth.ShiroUser
import com.itgongfu.common.auth.ShiroRole

class BootStrap {

    def init = { servletContext ->

        def userAdmin = new ShiroUser(username: "uAdmin", passwordHash: new Sha256Hash("admin").toHex())
        userAdmin.save()

        def roleAdmin = new ShiroRole(name: "Admin")
        roleAdmin.addToUsers(userAdmin)
        roleAdmin.addToPermissions("*:*")
        roleAdmin.save()

        def userClient = new ShiroUser(username: "uClient", passwordHash: new Sha256Hash("client").toHex())
        userClient.save()

        def roleClient = new ShiroRole(name: "CS")
        roleClient.addToUsers(userClient)
        roleClient.addToPermissions("test:*")
        roleClient.save()



        addShutdownHook {
            print "here do sth when shutdown abnomally"
        }



    }
    def destroy = {
        print "here do sth when shutdown nomally"
    }
}
