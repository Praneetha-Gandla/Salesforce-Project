public with sharing class DmlOperations {
    public void method() {
        // insert 1 record 
        // fetching id
        // insert records in bulk
        // insert related records
        // governor limits check
        // Account acc=new Account(Name='manikanth',Phone='7890');
        // Account acc1=new Account(Name='manikanth11',Phone='12345');
        // //insert acc;
        // //insert acc1;
        // System.debug('accound id: '+acc.id);
        // System.debug('accound id: '+acc1.id);


        // List<Account> li=new List<Account>();
        // li.add(acc);
        // li.add(acc1);
        // insert li;  

        // Account acc5=new Account(Name='lavanya',Phone='12345');
        // insert acc5;
        // Contact con=new Contact(AccountId=acc5.id,FirstName='vyshu',LastName='vangala');
        // insert con;


        //UPPDATE
        //fetching records updating records
        // Account acc6=[select Name,id from Account where Name='manikanth11'];
        // System.debug(acc6);
        // acc6.Phone='67890';
        // update acc6;
        // //assertequals method
        // Account updatedacc=[select Name,id from Account where Name='manikanth11'];
        // System.debug(updatedacc);
        // System.assertequals(acc6.phone,updatedacc.phone,'equal');

        //delete
        // Account acc5=[select Name,id from Account where id='001Qy00000hOzBKIA0'];
        // delete acc5;

        //undelete
        // Account acc6=[select Name,id from Account where id='001Qy00000kCmfvIAC' all rows];
        // undelete acc6;

        //upsert
        List<Account> acc=new List<Account>();
        Account li=new Account(Name='list');
        Account li1=new Account(Name='list1');
        Account li2 = new Account(Name = 'list2');
        acc.add(li);
        acc.add(li1);
        System.debug(acc);
        li1.Name='list2';
        System.debug(acc);
        upsert acc;


    



    }
}