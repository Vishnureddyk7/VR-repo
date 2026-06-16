import java.util.Scanner;

public class Calculator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("First number: ");
        double a = sc.nextDouble();

        System.out.print("Operator (+ - * /): ");
        char op = sc.next().charAt(0);

        System.out.print("Second number: ");
        double b = sc.nextDouble();

        double result;

        switch (op) {
            case '+':
                result = a + b;
                break;
            case '-':
                result = a - b;
                break;
            case '*':
                result = a * b;
                break;
            case '/':
                if (b == 0) {
                    System.out.println("Cannot divide by zero");
                    return;
                }
                result = a / b;
                break;
            default:
                System.out.println("Invalid operator");
                return;
        }

        System.out.println("Result = " + result);
        sc.close();
    }
}
