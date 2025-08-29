public class DmlOperations2 {
    public void method() {
        // List<Account> accList=[Select Name from Account where CreatedDate = LAST_WEEK];
        // System.debug(accList);
        // for(Account acc:accList){
        //     acc.Phone='9876543210';
        // }
        // update accList;

        //create a opportunity on existing account record


        String str='praneetha';
        List<Account> li=[select Name from Account where Name=:str];
        List<Account> accList = [SELECT Id FROM Account];
        System.debug(li);

        Account acc=[select Name from Account where Name='divya'];
        Opportunity opp=new Opportunity(AccountId=acc.id,Amount=10000,Name='divija',CloseDate=System.today(),StageName='Prospecting');
        insert opp;




    }
}