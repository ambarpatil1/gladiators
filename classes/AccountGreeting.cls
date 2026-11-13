/**
 * Builds the greeting the greetingCard component shows on an Account record page.
 */
public with sharing class AccountGreeting {

    @AuraEnabled(cacheable=true)
    public static String forAccount(Id accountId) {
        Account acc = [SELECT Name FROM Account WHERE Id = :accountId WITH USER_MODE LIMIT 1];
        return greet(acc.Name);
    }

    public static String greet(String name) {
        return 'Hello, ' + (String.isBlank(name) ? 'there' : name.trim()) + '!';
    }
}
