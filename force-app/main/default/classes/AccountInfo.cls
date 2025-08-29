public with sharing class AccountInfo {
    public static void info() {
        Account acc = new Account();
        acc.Name='praneetha';
        insert acc;
        Contact con = new Contact();
        con.accountId = acc.Id;

    }
}