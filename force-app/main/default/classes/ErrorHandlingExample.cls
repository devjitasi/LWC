public with sharing class ErrorHandlingExample {
    public ErrorHandlingExample() {
        System.debug('In ErrorHandlingExample constructor')
    }
    public void divideTwoNumbers(Integer a, Integer b) {
        try {
            Integer result = a / b;
            System.debug('Result: ' + result);
        } catch (ArithmeticException e) {
            System.debug('Error: Division by zero is not allowed.');
        } catch (Exception e) {
            System.debug('An unexpected error occurred: ' + e.getMessage());
        }
    }
}