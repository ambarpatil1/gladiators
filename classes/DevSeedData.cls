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
}
