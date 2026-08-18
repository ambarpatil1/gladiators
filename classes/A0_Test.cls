@isTest
public class A0_Test {

    @isTest
    static void testSayHello() {
        // Arrange
        A0 obj = new A0();
        String name = 'World';

        // Act
        String result = obj.sayHello(name);

        // Assert
        System.assertEquals('Hello World', result);
    }
}