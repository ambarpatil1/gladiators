public with sharing class ArmSampleCalculator {

    public class CalculationException extends Exception {}

    public static Decimal add(Decimal first, Decimal second) {
        return nullToZero(first) + nullToZero(second);
    }

    public static Decimal subtract(Decimal first, Decimal second) {
        return nullToZero(first) - nullToZero(second);
    }

    public static Decimal multiply(Decimal first, Decimal second) {
        return nullToZero(first) * nullToZero(second);
    }

    public static Decimal divide(Decimal numerator, Decimal denominator) {
        if (denominator == null || denominator == 0) {
            throw new CalculationException('Denominator must be a non-zero value.');
        }
        return nullToZero(numerator) / denominator;
    }

    public static Boolean isPositive(Decimal value) {
        return value != null && value > 0;
    }

    private static Decimal nullToZero(Decimal value) {
        return value == null ? 0 : value;
    }
}