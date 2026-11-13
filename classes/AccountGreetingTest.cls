@IsTest
private class AccountGreetingTest {

    @IsTest
    static void greetsByName() {
        System.assertEquals('Hello, Acme!', AccountGreeting.greet('Acme'));
    }

    @IsTest
    static void fallsBackWhenTheNameIsBlank() {
        System.assertEquals('Hello, there!', AccountGreeting.greet(' '));
    }
}
