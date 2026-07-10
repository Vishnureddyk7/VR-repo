@isTest
private class TemperatureConverterTest {

    @isTest
    static void testFreezingPoint() {
        // 1. Arrange & Act
        Decimal result = TemperatureConverter.fahrenheitToCelsius(32);
        
        // 2. Assert
        System.assertEquals(0, result, '32F should be 0C');
    }

    @isTest
    static void testBoilingPoint() {
        // 1. Arrange & Act
        Decimal result = TemperatureConverter.fahrenheitToCelsius(212);
        
        // 2. Assert
        System.assertEquals(100, result, '212F should be 100C');
    }

    @isTest
    static void testNegativeTemperature() {
        // 1. Arrange & Act
        Decimal result = TemperatureConverter.fahrenheitToCelsius(-40);
        
        // 2. Assert
        System.assertEquals(-40, result, '-40F should be -40C');
    }
}