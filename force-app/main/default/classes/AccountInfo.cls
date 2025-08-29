public with sharing class AccountInfo {
    public static void info() {
        Account acc = new Account();
        acc.Name='praneetha';
        acc.Phone='9876543210';
        insert acc;
        Contact con = new Contact();
        con.accountId = acc.Id;

    }

    public static void info1(){
        
    }

}