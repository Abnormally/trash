import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Produce {
    private static BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

    public static void main(String... args) {
        someRead_Writer();
    }

    private static void someFunc() {
        double d = 12.99;
        float f = (float) 12.99;

        System.out.printf("%.99f\n", d);
        System.out.printf("%.99f\n", f);
        System.out.printf("%.99f\n", d / f);
        System.out.printf("%.99f\n", f / d);
        System.out.printf("%.99f\n", 1.0 / 10.0);
        System.out.printf("%.99f\n", 1f / 10);
        System.out.printf("%.99f\n", 1 / 10d);
        System.out.printf("%.99f", 1f / 10f);
    }

    private static void someRead_Writer() {
        String test = "";

        while (true) {
            try {
                test = reader.readLine();
            } catch (IOException e) { System.out.printf("Проблема чтения. Проблема: %s\n", e.getMessage()); }

            if (test != null) {
                if (test.equalsIgnoreCase("exit")) break;
                if (test.equalsIgnoreCase("null")) System.out.println(1/0);
                double d;
                float f;

                try {
                    d = Double.parseDouble(test);
                    f = Float.parseFloat(test);
                    System.out.printf("Double: %.999f\n", d);
                    System.out.printf("Float: %.99f\n", f);
                    System.out.printf("Float.1: %.1f\n", f);
                    System.out.println("Rounded Float: <" + Math.round(f) + ">.");
                    if (Math.round(f) == 2147483647) System.out.println("Max Integer: " + Integer.MAX_VALUE);
                    System.out.println(d == f);
                } catch (Exception e) { System.out.printf("Ошибка парсера. Строка: [%s]%s\n", test, "."); }
            }
        }

        System.out.print("Exiting Doubles.");
    }
}
