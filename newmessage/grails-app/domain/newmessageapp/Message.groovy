package newmessageapp

class Message {

    String touser;
    String fromuser;
    String messcontent;
    Date date;



    static constraints = {
        messcontent blank: false
        touser blank: false
        fromuser blank: false


    }
}
