public class OrderCalculationHelper {

    public static Decimal calculateTotal(Decimal price, Integer quantity) {
        return price * quantity;
    }

    public static Decimal calculateDiscount(Decimal amount, Decimal percentage) {
        return amount - (amount * percentage / 100);
    }

    public static Boolean isValidQuantity(Integer quantity) {
        return quantity > 0;
    }
}