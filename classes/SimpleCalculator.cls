public class SimpleCalculator {
    public Integer add(Integer a, Integer b) {
        return a + b;
    }


    public Integer subtract(Integer a, Integer b) {
        return a - b;
    }

    public Integer multiply(Integer a, Integer b) {
        if (a == null || b == null) {
            return null;
        }
        return a * b;
    }

    public Decimal divide(Decimal a, Decimal b) {
        if (b == 0) {
            return null;
        }
        return a / b;
    }
}