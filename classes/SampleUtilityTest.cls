@isTest
private class SampleUtilityTest {

    @isTest
    static void testGetMessage() {
        String result = SampleUtility.getMessage();
        System.assertEquals('Hello World', result);
    }

    @isTest
    static void testAddNumbers() {
        Integer result = SampleUtility.addNumbers(10, 20);
        System.assertEquals(30, result);
    }
}