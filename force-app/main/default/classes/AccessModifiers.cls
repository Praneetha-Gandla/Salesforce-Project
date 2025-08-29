// public class AccessModifiers {
//     public Integer i=8;
//     public boolean b=true;
//     public void method()
//      {
//         System.debug(i);
//     }
// }

global class AccessModifiers {
    global Integer i=8;
    global boolean b=true;
    public void method()
     {
        System.debug(i);
    }



@AuraEnabled(cacheable=true)
public static List<Account> getAllAccounts(){
    return [SELECT ID,Name from Account];
}

@AuraEnabled(cacheable=true)
public static List<Contact> getRelatedContacts(String accId){
    return [SELECT Id,Name,Phone,Email from Contact where AccountId=:accId];
}
}