@isTest
private class SimpleCalculatorTest {
    @isTest
    static void testAdd() {
        SimpleCalculator calc = new SimpleCalculator();
        Integer result = calc.add(5, 3);
        System.assertEquals(8, result, 'Addition failed');
    }

    @isTest
    static void testSubtract() {
        SimpleCalculator calc = new SimpleCalculator();
        Integer result = calc.subtract(10, 4);
        System.assertEquals(6, result, 'Subtraction failed');
    }

    @isTest
    static void testMultiply() {
        SimpleCalculator calc = new SimpleCalculator();
        Integer result = calc.multiply(2, 6);
        System.assertEquals(12, result, 'Multiplication failed');
    }

    @isTest
    static void testMultiplyWithNull() {
        SimpleCalculator calc = new SimpleCalculator();
        Integer result1 = calc.multiply(5, null);
        Integer result2 = calc.multiply(null, 10);
        System.assertEquals(null, result1, 'Multiplication with null (first) failed');
        System.assertEquals(null, result2, 'Multiplication with null (second) failed');
    }

    @isTest
    static void testDivide() {
        SimpleCalculator calc = new SimpleCalculator();
        Decimal result = calc.divide(10, 2);
        System.assertEquals(5, result, 'Division failed');
    }

    @isTest
    static void testDivideByZero() {
        SimpleCalculator calc = new SimpleCalculator();
        Decimal result = calc.divide(10, 0);
        System.assertEquals(null, result, 'Division by zero failed');
    }
}