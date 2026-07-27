import '../models/lesson.dart';

class LessonsData {
  static List<Lesson> getLessons(String topicId) {
    switch (topicId) {
      case 'lists':
        return const [
          Lesson(
            id: 1,
            title: 'Introduction to Lists',
            duration: '5 min',
            theory:
                'A List is an ordered and mutable collection in Python. Lists can store multiple values and allow duplicate elements.',
            code: '''
numbers = [10, 20, 30]

print(numbers)
''',
            output: '''
[10, 20, 30]
''',
            realWorldExample:
                'Shopping cart items, employee names, student marks.',
            interviewQuestions: [
              'What is a List?',
              'Can Lists store duplicate values?',
              'Are Lists mutable?',
            ],
          ),
          Lesson(
            id: 2,
            title: 'List Methods',
            duration: '7 min',
            theory: 'Lists support methods like append(), remove(), and sort().',
            code: '''
items = [3, 1, 2]
items.sort()
print(items)
''',
            output: '''
[1, 2, 3]
''',
            realWorldExample: 'Sorting tasks by priority.',
            interviewQuestions: [
              'How do you add items to a list?',
              'What is the difference between append and extend?',
            ],
          ),
          Lesson(
            id: 3,
            title: 'List Comprehensions',
            duration: '6 min',
            theory: 'List comprehensions offer a concise way to create lists.',
            code: '''
squares = [x * x for x in range(5)]
print(squares)
''',
            output: '''
[0, 1, 4, 9, 16]
''',
            realWorldExample: 'Generating number patterns quickly.',
            interviewQuestions: [
              'What is a list comprehension?',
              'When would you use it?',
            ],
          ),
        ];
      case 'tuples':
        return const [
          Lesson(
            id: 1,
            title: 'Tuples Basics',
            duration: '4 min',
            theory: 'Tuples are ordered and immutable collections.',
            code: '''
coords = (10, 20)
print(coords)
''',
            output: '''
(10, 20)
''',
            realWorldExample: 'Coordinates or fixed configuration values.',
            interviewQuestions: [
              'What is the difference between a tuple and a list?',
            ],
          ),
          Lesson(
            id: 2,
            title: 'Tuple Packing and Unpacking',
            duration: '5 min',
            theory: 'Python allows assigning multiple values at once.',
            code: '''
a, b = (1, 2)
print(a, b)
''',
            output: '''
1 2
''',
            realWorldExample: 'Assigning multiple values from a function.',
            interviewQuestions: [
              'What is tuple unpacking?',
            ],
          ),
        ];
      case 'dictionary':
        return const [
          Lesson(
            id: 1,
            title: 'Dictionaries Overview',
            duration: '5 min',
            theory: 'Dictionaries store data as key-value pairs.',
            code: '''
student = {'name': 'Ava', 'age': 21}
print(student)
''',
            output: '''
{'name': 'Ava', 'age': 21}
''',
            realWorldExample: 'Storing user profile data.',
            interviewQuestions: [
              'What is a dictionary?',
            ],
          ),
          Lesson(
            id: 2,
            title: 'Dictionary Operations',
            duration: '6 min',
            theory: 'You can add, update, and remove dictionary entries.',
            code: '''
student['age'] = 22
print(student['age'])
''',
            output: '''
22
''',
            realWorldExample: 'Updating account settings.',
            interviewQuestions: [
              'How do you update a value in a dictionary?',
            ],
          ),
        ];
      case 'sets':
        return const [
          Lesson(
            id: 1,
            title: 'Sets Basics',
            duration: '4 min',
            theory: 'Sets store unique items and are useful for membership tests.',
            code: '''
values = {1, 2, 2, 3}
print(values)
''',
            output: '''
{1, 2, 3}
''',
            realWorldExample: 'Tracking unique tags.',
            interviewQuestions: [
              'What makes a set different from a list?',
            ],
          ),
          Lesson(
            id: 2,
            title: 'Set Operations',
            duration: '5 min',
            theory: 'Sets support union, intersection, and difference operations.',
            code: '''
a = {1, 2, 3}
b = {3, 4}
print(a | b)
''',
            output: '''
{1, 2, 3, 4}
''',
            realWorldExample: 'Comparing two user groups.',
            interviewQuestions: [
              'What is set union?',
            ],
          ),
        ];
      case 'functions':
        return const [
          Lesson(
            id: 1,
            title: 'Function Definitions',
            duration: '6 min',
            theory: 'Functions allow you to reuse blocks of code.',
            code: '''
def greet(name):
    return f'Hello {name}'

print(greet('Ava'))
''',
            output: '''
Hello Ava
''',
            realWorldExample: 'Creating reusable business logic.',
            interviewQuestions: [
              'What is a function?',
            ],
          ),
          Lesson(
            id: 2,
            title: 'Parameters and Return Values',
            duration: '7 min',
            theory: 'Functions can accept inputs and return results.',
            code: '''
def add(a, b):
    return a + b

print(add(2, 3))
''',
            output: '''
5
''',
            realWorldExample: 'Calculating totals for invoices.',
            interviewQuestions: [
              'How do function parameters work?',
            ],
          ),
        ];
      case 'classes':
        return const [
          Lesson(
            id: 1,
            title: 'Class Basics',
            duration: '6 min',
            theory: 'Classes define blueprints for objects.',
            code: '''
class Dog:
    pass

print(Dog())
''',
            output: '''
<__main__.Dog object at 0x...>
''',
            realWorldExample: 'Modeling a product or user entity.',
            interviewQuestions: [
              'What is a class?',
            ],
          ),
          Lesson(
            id: 2,
            title: 'Methods and Attributes',
            duration: '7 min',
            theory: 'Classes can have methods and state.',
            code: '''
class Dog:
    def bark(self):
        return 'woof'

print(Dog().bark())
''',
            output: '''
woof
''',
            realWorldExample: 'Building interactive app objects.',
            interviewQuestions: [
              'What is a method?',
            ],
          ),
        ];
      default:
        return const [];
    }
  }
}
