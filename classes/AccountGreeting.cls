/**
 * Builds the greeting the greetingCard component shows on an Account record page.
 */
public with sharing class AccountGreeting {

    @AuraEnabled(cacheable=true)
    public static String forAccount(Id accountId) {
        Account acc = [SELECT Name, Owner.Name FROM Account WHERE Id = :accountId WITH USER_MODE LIMIT 1];
        return greetWithOwner(acc.Name, acc.Owner.Name);
    }

    public static String greetWithOwner(String name, String ownerName) {
        String greeting = greet(name);
        return String.isBlank(ownerName) ? greeting : greeting + ' Your account manager is ' + ownerName.trim() + '.';
    }

    public static String greet(String name) {
        return 'Hello, ' + (String.isBlank(name) ? 'there' : name.trim()) + '!';
    }
}