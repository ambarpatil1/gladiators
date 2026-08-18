public class AccountClass {

    // Method to create an Account
    public static void createAccount(String accountName) {
        Account newAccount = new Account();
        newAccount.Name = accountName;
        insert newAccount;
    }

    // Method to update an Account by Id
    public static void updateAccount(Id accountId, String newName) {
        Account existingAccount = [SELECT Id, Name FROM Account WHERE Id = :accountId LIMIT 1];
        existingAccount.Name = newName;
        update existingAccount;
    }

    // Method to delete an Account by Id
    public static void deleteAccount(Id accountId) {
        Account accountToDelete = [SELECT Id FROM Account WHERE Id = :accountId LIMIT 1];
        delete accountToDelete;
    }

    // Method to retrieve an Account by Id
    public static Account getAccountById(Id accountId) {
        Account account = [SELECT Id, Name FROM Account WHERE Id = :accountId LIMIT 1];
        return account;
    }
}