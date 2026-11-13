/**
 * DEVELOPER ONLY. Seeds a scratch org or a personal dev sandbox with sample data.
 * Listed in .forceignore: it must never be deployed to a shared org.
 */
public class DevSeedData {

    public static void createSampleAccounts(Integer howMany) {
        List<Account> accounts = new List<Account>();
        for (Integer i = 1; i <= howMany; i++) {
            accounts.add(new Account(Name = 'Sample Account ' + i));
        }
        insert accounts;
    }

    public static void createSampleContacts(Id accountId, Integer howMany) {
        List<Contact> contacts = new List<Contact>();
        for (Integer i = 1; i <= howMany; i++) {
            contacts.add(new Contact(AccountId = accountId, LastName = 'Sample ' + i));
        }
        insert contacts;
    }
}
