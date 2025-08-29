public with sharing class AccountRetreival {
    // Method to retrieve the first 10 accounts
    public List<Account> getFirst10Accounts() {
        // Check if the user has read access to the Account object
        if (!Schema.sObjectType.Account.isAccessible()) {
            throw new Exception('User does not have permission to read Account records.');
        }

        // SOQL query to fetch the first 10 Account records with their Id and Name fields
        return [SELECT Id, Name FROM Account LIMIT 10];
    }
}

