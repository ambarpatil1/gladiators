@IsTest
private class AccountGreetingTest {

    @IsTest
    static void greetsByName() {
        System.assertEquals('Hello, Acme!', AccountGreeting.greet('Acme'));
    }

    @IsTest
    static void namesTheAccountManager() {
        System.assertEquals('Hello, Acme! Your account manager is Jane Doe.', AccountGreeting.greetWithOwner('Acme', 'Jane Doe'));
    }

    @IsTest
    static void leavesTheManagerOutWhenThereIsNone() {
        System.assertEquals('Hello, Acme!', AccountGreeting.greetWithOwner('Acme', null));
    }

    @IsTest
    static void fallsBackWhenTheNameIsBlank() {
        System.assertEquals('Hello, there!', AccountGreeting.greet(' '));
    }
}
