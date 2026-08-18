public class AccountManager {

    // Method to create a new Account
    public static Account createAccount(String accountName, String industry, Decimal annualRevenue) {
        try {
            Account newAccount = new Account(
                Name = accountName,
                Industry = industry,
                AnnualRevenue = annualRevenue
            );
            insert newAccount;
            return newAccount;
        } catch (DmlException e) {
            System.debug('Error creating Account: ' + e.getMessage());
            throw new CustomException('Error creating Account: ' + e.getMessage());
        }
    }

    // Method to update an existing Account by Id
    public static Account updateAccount(Id accountId, String newAccountName, String newIndustry, Decimal newAnnualRevenue) {
        try {
            Account accToUpdate = [SELECT Id, Name, Industry, AnnualRevenue FROM Account WHERE Id = :accountId LIMIT 1];
            accToUpdate.Name = newAccountName;
            accToUpdate.Industry = newIndustry;
            accToUpdate.AnnualRevenue = newAnnualRevenue;
            update accToUpdate;
            return accToUpdate;
        } catch (QueryException e) {
            System.debug('Account not found: ' + e.getMessage());
            throw new CustomException('Account not found: ' + e.getMessage());
        } catch (DmlException e) {
            System.debug('Error updating Account: ' + e.getMessage());
            throw new CustomException('Error updating Account: ' + e.getMessage());
        }
    }

    // Method to query Accounts by Industry
    public static List<Account> getAccountsByIndustry(String industry) {
        try {
            List<Account> accounts = [SELECT Id, Name, Industry, AnnualRevenue FROM Account WHERE Industry = :industry];
            return accounts;
        } catch (QueryException e) {
            System.debug('Error querying Accounts: ' + e.getMessage());
            throw new CustomException('Error querying Accounts: ' + e.getMessage());
        }
    }

    // Method to delete an Account by Id
    public static void deleteAccount(Id accountId) {
        try {
            Account accToDelete = [SELECT Id FROM Account WHERE Id = :accountId LIMIT 1];
            delete accToDelete;
        } catch (QueryException e) {
            System.debug('Account not found: ' + e.getMessage());
            throw new CustomException('Account not found: ' + e.getMessage());
        } catch (DmlException e) {
            System.debug('Error deleting Account: ' + e.getMessage());
            throw new CustomException('Error deleting Account: ' + e.getMessage());
        }
    }

    // Method to handle bulk insert of Accounts
    public static void insertAccounts(List<Account> accountsToInsert) {
        try {
            insert accountsToInsert;
        } catch (DmlException e) {
            System.debug('Error inserting Accounts: ' + e.getMessage());
            throw new CustomException('Error inserting Accounts: ' + e.getMessage());
        }
    }

    // Custom exception class for error handling
    public class CustomException extends Exception {}
}