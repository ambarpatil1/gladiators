@IsTest
public class OrderCalculationHelperTest {

    @IsTest
    static void testCalculateTotal() {
        Test.startTest();

        Decimal result = OrderCalculationHelper.calculateTotal(100, 3);

        Test.stopTest();

        System.assertEquals(300, result);
    }

    @IsTest
    static void testCalculateDiscount() {
        Test.startTest();

        Decimal result = OrderCalculationHelper.calculateDiscount(1000, 10);

        Test.stopTest();

        System.assertEquals(900, result);
    }

    @IsTest
    static void testIsValidQuantity() {
        Test.startTest();

        Boolean validResult = OrderCalculationHelper.isValidQuantity(5);
        Boolean invalidResult = OrderCalculationHelper.isValidQuantity(0);

        Test.stopTest();

        System.assertEquals(true, validResult);
        System.assertEquals(false, invalidResult);
    }
}