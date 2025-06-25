# Counter Unit Test App

A Flutter project demonstrating unit testing concepts with a simple counter implementation.

## About This Project

I created this project while revising unit testing concepts in Flutter. The main focus was to practice writing clean, well-structured unit tests using the **Given-When-Then** pattern.

## What's Included

- **Counter Class** (`lib/counter.dart`) - A simple counter with increment functionality
- **Unit Tests** (`test/counter_test.dart`) - Comprehensive tests following the Given-When-Then pattern
- **Main App** (`lib/main.dart`) - Basic Flutter app structure

## Testing Concepts Demonstrated

### Given-When-Then Pattern
The tests are structured using the Given-When-Then pattern for better readability and organization:

- **Given**: Set up the initial state (Arrange)
- **When**: Execute the action being tested (Act) 
- **Assert**: Verify the expected outcome (Assert)

### Test Cases Covered
1. **Initial State Test**: Verifies that a new counter starts with a count of 0
2. **Increment Function Test**: Verifies that calling increment() increases the count by 1

## Running the Tests

To run the unit tests:

```bash
flutter test
```

## Understanding Unit Testing

### What is Unit Testing?
Unit testing is a software testing method where individual units or components of a software are tested in isolation. In Flutter, this typically means testing individual functions, methods, or classes to ensure they work as expected.

### Benefits of Unit Testing

#### 1. **Early Bug Detection**
- Catch bugs during development rather than in production
- Identify issues before they become expensive to fix

#### 2. **Code Quality & Reliability**
- Ensures your code behaves as expected
- Provides confidence when making changes or refactoring
- Acts as documentation for how your code should work

#### 3. **Faster Development Cycle**
- Quick feedback on code changes
- Reduces time spent debugging
- Enables confident refactoring

#### 4. **Maintainability**
- Makes code more modular and testable
- Forces better code design and separation of concerns
- Easier to understand code behavior

### When to Use Unit Testing

✅ **Good Candidates for Unit Testing:**
- Business logic functions
- Data processing methods
- Utility functions
- State management classes
- Mathematical calculations
- Validation logic

❌ **Not Ideal for Unit Testing:**
- UI widgets (use widget tests instead)
- Database connections
- Network calls (use integration tests)
- Platform-specific code

### How to Write Effective Unit Tests

#### 1. **Follow the AAA Pattern (Arrange-Act-Assert)**
```dart
test('description of what is being tested', () {
  // Arrange: Set up test data and dependencies
  final counter = Counter();
  
  // Act: Execute the function being tested
  counter.increment();
  
  // Assert: Verify the expected outcome
  expect(counter.count, 1);
});
```

#### 2. **Test Naming Conventions**
- Use descriptive names that explain the scenario
- Format: "given [initial state] when [action] then [expected result]"
- Example: "given counter at 0 when incremented then count should be 1"

#### 3. **Test One Thing at a Time**
- Each test should verify one specific behavior
- Keep tests simple and focused
- Avoid testing multiple scenarios in one test

#### 4. **Use Test Groups for Organization**
```dart
group('Counter Tests', () {
  test('initial count should be zero', () { /* ... */ });
  test('increment should increase count by one', () { /* ... */ });
  test('decrement should decrease count by one', () { /* ... */ });
});
```

### Testing in Flutter

Flutter provides excellent testing support out of the box:

- **flutter_test**: Core testing framework
- **test**: Dart's testing package
- **mockito**: For creating mock objects
- **bloc_test**: For testing BLoC pattern

## Key Learning Points

- Writing testable code with clear separation of concerns
- Implementing the Given-When-Then testing pattern
- Using Flutter's testing framework effectively
- Following naming conventions for descriptive test cases
- Understanding the benefits and proper use cases for unit testing
- Applying the AAA (Arrange-Act-Assert) pattern consistently

## Getting Started with Flutter

If you're new to Flutter development, check out these resources:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Flutter Testing Documentation](https://docs.flutter.dev/testing)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
