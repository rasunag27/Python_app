import '../models/lesson.dart';
import '../models/example.dart';

class LessonsData {
  static List<Lesson> getLessons(String topicId) {
    switch (topicId) {
      case 'lists':
        return const [
          Lesson(
            id: 1,
            title: 'Basic List Understanding',
            duration: '5 min',
            theory:
                'A list is one of the most important data structures in Python. It helps you store many values in a single variable, keep them in order, and change them whenever needed. A list is very similar to a real-world shopping list, a to-do list, or a list of friends names. You can keep numbers, strings, or even other lists inside it.',
            code: '''
fruits = ['apple', 'banana', 'mango']
print(fruits)
print(type(fruits))
''',
            output: '''
['apple', 'banana', 'mango']
<class 'list'>
''',
            realWorldExample:
                'Storing a grocery list, student names, or product names in one place.',
            interviewQuestions: [
              'What is a list in Python?',
              'Can a list contain duplicate values?',
              'Is a list mutable?',
            ],
          ),
          Lesson(
            id: 2,
            title: 'Creating Lists with Different Data Types',
            duration: '6 min',
            theory:
                'Lists are flexible because they can hold different kinds of data in the same list. For example, one list can contain numbers, text, and booleans together. This is useful when you want to group related but different values. However, in real programs, it is often better to keep lists focused on one type of data for clarity.',
            code: '''
mixed_list = [1, 'hello', True, 3.14]
print(mixed_list)
print(mixed_list[1])
''',
            output: '''
[1, 'hello', True, 3.14]
hello
''',
            realWorldExample:
                'Keeping user details such as age, name, and active status in one collection.',
            interviewQuestions: [
              'Can a Python list contain different data types?',
              'What is the difference between storing strings and numbers in a list?',
            ],
          ),
          Lesson(
            id: 3,
            title: 'Accessing Elements with Indexing',
            duration: '6 min',
            theory:
                'Each item in a list has a position known as an index. Python uses zero-based indexing, which means the first element is at index 0. This is important because it helps you access a specific item quickly. If you forget that indexing starts at 0, beginners often make mistakes.',
            code: '''
colors = ['red', 'green', 'blue']
print(colors[0])
print(colors[1])
print(colors[2])
''',
            output: '''
red
green
blue
''',
            realWorldExample:
                'Getting the first or last item from a list of products, names, or marks.',
            interviewQuestions: [
              'What does index 0 represent in a list?',
              'How do you access the second element of a list?',
            ],
          ),
          Lesson(
            id: 4,
            title: 'Negative Indexing and Reverse Access',
            duration: '6 min',
            theory:
                'Python also supports negative indexing. A negative index starts from the end of the list. For example, -1 gives the last item, -2 gives the second last, and so on. This is a handy shortcut when you want to reach the end of a list without counting positions manually.',
            code: '''
months = ['Jan', 'Feb', 'Mar', 'Apr']
print(months[-1])
print(months[-3])
''',
            output: '''
Apr
Feb
''',
            realWorldExample:
                'Accessing the most recent month or the last item in a history list.',
            interviewQuestions: [
              'What does -1 mean in a list?',
              'How is negative indexing different from normal indexing?',
            ],
          ),
          Lesson(
            id: 5,
            title: 'Slicing Lists',
            duration: '6 min',
            theory:
                'Slicing lets you create a new list from part of an existing list. You can choose a starting index and an ending index, and Python will return everything in between. The syntax list[start:end] is very powerful because it allows you to work with only a subset of data instead of the whole list.',
            code: '''
numbers = [10, 20, 30, 40, 50]
print(numbers[1:4])
print(numbers[:3])
print(numbers[3:])
''',
            output: '''
[20, 30, 40]
[10, 20, 30]
[40, 50]
''',
            realWorldExample:
                'Showing only the first few products from a catalog or the latest few messages in a chat.',
            interviewQuestions: [
              'What is slicing?',
              'How do you get the first three elements of a list?',
            ],
          ),
          Lesson(
            id: 6,
            title: 'Updating Values in a List',
            duration: '5 min',
            theory:
                'Lists are mutable, which means you can change their contents after they are created. You can update a single item by using its index, and you can also replace several values at once. This makes lists very useful when your program needs to change data while running.',
            code: '''
players = ['Riya', 'Aman', 'Sara']
players[1] = 'Kiran'
print(players)
''',
            output: '''
['Riya', 'Kiran', 'Sara']
''',
            realWorldExample:
                'Updating a user name, changing a task status, or replacing a score in a record.',
            interviewQuestions: [
              'How do you update an element in a list?',
              'Can you change the value of an existing list item?',
            ],
          ),
          Lesson(
            id: 7,
            title: 'Adding Items with append',
            duration: '5 min',
            theory:
                'The append method adds one new item to the end of a list. It is one of the most commonly used list methods because it is simple and fast. When you add something to a shopping list or a task list, append is often the first method you will use.',
            code: '''
items = ['pen', 'book']
items.append('notebook')
print(items)
''',
            output: '''
['pen', 'book', 'notebook']
''',
            realWorldExample:
                'Adding a new task to a to-do list or a new product to a cart.',
            interviewQuestions: [
              'What does append do?',
              'Where does append place the new item?',
            ],
          ),
          Lesson(
            id: 8,
            title: 'Adding Items with insert and extend',
            duration: '6 min',
            theory:
                'Sometimes you need more control than append gives you. The insert method lets you place a new item at a specific position, while extend lets you add multiple items at once. These methods are useful when you want to build a list gradually or merge one list into another.',
            code: '''
letters = ['a', 'c']
letters.insert(1, 'b')
letters.extend(['d', 'e'])
print(letters)
''',
            output: '''
['a', 'b', 'c', 'd', 'e']
''',
            realWorldExample:
                'Adding a new category into the middle of a menu or merging two lists of contacts.',
            interviewQuestions: [
              'What is the difference between append and extend?',
              'How does insert work?',
            ],
          ),
          Lesson(
            id: 9,
            title: 'Removing Items with remove, pop, and clear',
            duration: '6 min',
            theory:
                'Lists also let you remove items. remove deletes the first matching value, pop removes an item by position and can also return it, and clear removes everything. These methods are useful when a task is finished, an item is no longer needed, or you want to reset a list.',
            code: '''
colors = ['red', 'green', 'blue']
colors.remove('green')
last = colors.pop()
print(colors)
print(last)
''',
            output: '''
['red']
blue
''',
            realWorldExample:
                'Removing completed tasks from a to-do list or clearing old search history.',
            interviewQuestions: [
              'What is the difference between remove and pop?',
              'What does clear do?',
            ],
          ),
          Lesson(
            id: 10,
            title: 'Finding Elements with index and count',
            duration: '6 min',
            theory:
                'You can search inside a list using index and count. index returns the position of the first matching element, while count tells you how many times a value appears. These methods are useful for checking data quality and understanding the frequency of values in a list.',
            code: '''
marks = [90, 85, 90, 70]
print(marks.index(85))
print(marks.count(90))
''',
            output: '''
1
2
''',
            realWorldExample:
                'Finding the position of a student score or counting repeated tags.',
            interviewQuestions: [
              'What does index return?',
              'What does count tell you?',
            ],
          ),
          Lesson(
            id: 11,
            title: 'Copying Lists Safely',
            duration: '6 min',
            theory:
                'When you assign one list to another variable, both variables may point to the same list in memory. This means changing one list can affect the other. To avoid this, you can use copy() or slicing to create a separate copy. This is an important concept when working with larger programs.',
            code: '''
original = [1, 2, 3]
copy_list = original.copy()
copy_list.append(4)
print(original)
print(copy_list)
''',
            output: '''
[1, 2, 3]
[1, 2, 3, 4]
''',
            realWorldExample:
                'Keeping a backup of a user list without changing the original version.',
            interviewQuestions: [
              'Why do we use copy()?',
              'What happens if we assign one list to another without copying it?',
            ],
          ),
          Lesson(
            id: 12,
            title: 'Sorting and Reversing Lists',
            duration: '6 min',
            theory:
                'Sorting helps arrange list values in a specific order, such as ascending or descending. The sort method changes the list in place, while reverse reverses the order. These operations are very useful for reports, rankings, and organizing data in a readable format.',
            code: '''
numbers = [5, 2, 9, 1]
numbers.sort()
print(numbers)

numbers.reverse()
print(numbers)
''',
            output: '''
[1, 2, 5, 9]
[9, 5, 2, 1]
''',
            realWorldExample:
                'Sorting exam scores or ordering products by price.',
            interviewQuestions: [
              'What does sort() do?',
              'How is reverse() different from sort()?',
            ],
          ),
          Lesson(
            id: 13,
            title: 'Joining Lists and Repeating Values',
            duration: '6 min',
            theory:
                'You can combine two lists using the + operator, and you can repeat a list using the * operator. These are useful when you want to merge categories or create repeated patterns. They make list creation quick and expressive in Python.',
            code: '''
a = [1, 2]
b = [3, 4]
print(a + b)
print(['A'] * 3)
''',
            output: '''
[1, 2, 3, 4]
['A', 'A', 'A']
''',
            realWorldExample:
                'Combining product lists or repeating a message label several times.',
            interviewQuestions: [
              'How can you join two lists?',
              'What does the * operator do with a list?',
            ],
          ),
          Lesson(
            id: 14,
            title: 'Checking Membership in a List',
            duration: '5 min',
            theory:
                'The in operator checks whether an item exists in a list. It returns True or False and is very useful for validation. Instead of manually scanning the list, you can quickly ask Python whether a value is present.',
            code: '''
fruits = ['apple', 'banana', 'mango']
print('apple' in fruits)
print('grape' in fruits)
''',
            output: '''
True
False
''',
            realWorldExample:
                'Checking whether a username or product code already exists.',
            interviewQuestions: [
              'How do you check whether an item exists in a list?',
              'What does the in operator return?',
            ],
          ),
          Lesson(
            id: 15,
            title: 'Looping Through a List',
            duration: '7 min',
            theory:
                'A loop allows you to visit every item in a list one by one. This is one of the most common ways to process data in Python. You can print values, transform them, or calculate results using each item.',
            code: '''
words = ['python', 'list', 'loop']
for word in words:
    print(word.upper())
''',
            output: '''
PYTHON
LIST
LOOP
''',
            realWorldExample:
                'Printing all names in a list or converting every item to uppercase.',
            interviewQuestions: [
              'How do you loop through a list?',
              'Why are loops useful with lists?',
            ],
          ),
          Lesson(
            id: 16,
            title: 'List Comprehensions',
            duration: '7 min',
            theory:
                'List comprehension is a compact and elegant way to create a new list from an existing one. It allows you to write shorter code while still being readable for simple transformations. Beginners often learn it as a shortcut, but it is also important for writing clean Python code.',
            code: '''
squares = [x * x for x in range(5)]
print(squares)
''',
            output: '''
[0, 1, 4, 9, 16]
''',
            realWorldExample:
                'Generating number patterns, squares, or filtered values quickly.',
            interviewQuestions: [
              'What is a list comprehension?',
              'When would you use it?',
            ],
          ),
          Lesson(
            id: 17,
            title: 'Nested Lists',
            duration: '7 min',
            theory:
                'A nested list is a list inside another list. This is helpful when you want to organize data in groups, such as students and their marks, or products in different categories. Accessing values inside nested lists requires using multiple indexes, one for each level.',
            code: '''
students = [['Asha', 90], ['Ravi', 85], ['Meera', 88]]
print(students[1])
print(students[1][0])
print(students[2][1])
''',
            output: '''
['Ravi', 85]
Ravi
88
''',
            realWorldExample:
                'Storing marks for multiple students where each student has a name and a score.',
            interviewQuestions: [
              'What is a nested list?',
              'How do you access an item inside a list that is inside another list?',
            ],
          ),
          Lesson(
            id: 18,
            title: 'Common List Mistakes and Best Practices',
            duration: '6 min',
            theory:
                'Many beginners make mistakes with lists by using the wrong index, forgetting that indexing starts at 0, or changing a list while looping through it. It is also important to choose clear names and understand whether you want to modify the original list or work with a copy. Good habits make list programs easier to understand and debug.',
            code: '''
values = [10, 20, 30]
print(values[0])
print(values[-1])
''',
            output: '''
10
30
''',
            realWorldExample:
                'Avoiding bugs while working with score lists, names, or product inventories.',
            interviewQuestions: [
              'What is a common beginner mistake with indexing?',
              'Why is it helpful to use a copy of a list?',
            ],
          ),
          Lesson(
            id: 19,
            title: 'Lists vs Tuples and Strings',
            duration: '6 min',
            theory:
                'Lists are mutable, which means they can change after creation. Tuples are similar but immutable, so they cannot be changed. Strings are also ordered collections of characters, but they are used mainly for text. Understanding the difference helps you choose the right type for different problems.',
            code: '''
my_list = [1, 2, 3]
my_tuple = (1, 2, 3)
my_string = 'abc'

my_list[0] = 9
print(my_list)
''',
            output: '''
[9, 2, 3]
''',
            realWorldExample:
                'Choosing a list for changeable data and a tuple for fixed configuration values.',
            interviewQuestions: [
              'What is the difference between a list and a tuple?',
              'Why would you choose a list over a string?',
            ],
          ),
          Lesson(
            id: 20,
            title: 'Mini Project: Building a Shopping Cart',
            duration: '8 min',
            theory:
                'A simple shopping cart is a great project for practicing lists. You can start with an empty list, add items, remove items, and display the final list. This project brings together many list concepts such as append, remove, loops, and membership checks. It is a perfect beginner exercise because it shows how lists solve real problems.',
            code: '''
cart = []
cart.append('milk')
cart.append('bread')
cart.append('eggs')
print(cart)

if 'milk' in cart:
    print('milk is in the cart')
''',
            output: '''
['milk', 'bread', 'eggs']
milk is in the cart
''',
            realWorldExample:
                'Building a simple online shopping basket or order list for an application.',
            interviewQuestions: [
              'How can lists be used in a shopping cart application?',
              'Which list methods are useful in this example?',
            ],
          ),
        ];
      case 'tuples':
        return const [
          Lesson(
            id: 1,
            title: 'Introduction to Tuples',
            duration: '5 min',
            theory:
                'A tuple is an ordered collection of values that cannot be changed once created. It is similar to a list, but tuples are immutable, which means you cannot add, remove, or update items after creation. Tuples are often used for fixed data such as coordinates, dates, or settings.',
            code: '''
point = (10, 20)
print(point)
print(type(point))
''',
            output: '''
(10, 20)
<class 'tuple'>
''',
            realWorldExample:
                'Representing a point on a map or a fixed set of configuration values.',
            interviewQuestions: [
              'What is a tuple?',
              'How is a tuple different from a list?',
              'Why would you use a tuple?',
            ],
          ),
          Lesson(
            id: 2,
            title: 'Accessing Tuple Elements',
            duration: '5 min',
            theory:
                'You can access items in a tuple using indexing just like a list. The first item is at index 0, the second at index 1, and so on. Since tuples are immutable, they are useful when you want a safe collection that should not change accidentally.',
            code: '''
colors = ('red', 'green', 'blue')
print(colors[0])
print(colors[2])
''',
            output: '''
red
blue
''',
            realWorldExample:
                'Accessing the first or last item in a fixed list of categories.',
            interviewQuestions: [
              'How do you access an element in a tuple?',
              'Can you change a tuple after it is created?',
            ],
          ),
          Lesson(
            id: 3,
            title: 'Tuple Immutability',
            duration: '5 min',
            theory:
                'Immutability means the contents of a tuple cannot be changed once created. This makes tuples safer for data that should remain constant. For example, if you store days of the week or RGB color values, a tuple is a good choice.',
            code: '''
days = ('Mon', 'Tue', 'Wed')
print(days)
''',
            output: '''
('Mon', 'Tue', 'Wed')
''',
            realWorldExample:
                'Holding fixed values such as weekdays or a set of directions.',
            interviewQuestions: [
              'What does immutability mean?',
              'Why is immutability useful?',
            ],
          ),
          Lesson(
            id: 4,
            title: 'Tuple Packing and Unpacking',
            duration: '6 min',
            theory:
                'Tuple packing happens when you assign multiple values into a single tuple. Tuple unpacking is the reverse: you assign the values of a tuple into separate variables. This is a very elegant and common pattern in Python.',
            code: '''
student = ('Asha', 21)
name, age = student
print(name)
print(age)
''',
            output: '''
Asha
21
''',
            realWorldExample:
                'Assigning a person’s name and age from a single data structure.',
            interviewQuestions: [
              'What is tuple unpacking?',
              'How do you assign tuple values to multiple variables?',
            ],
          ),
          Lesson(
            id: 5,
            title: 'Tuple Methods and Practical Use',
            duration: '6 min',
            theory:
                'Tuples have fewer methods than lists because they are meant to be simple and safe. You can still use methods like count and index. They are especially useful when you want to store data that should not be modified accidentally.',
            code: '''
nums = (1, 2, 2, 3)
print(nums.count(2))
print(nums.index(3))
''',
            output: '''
2
3
''',
            realWorldExample:
                'Counting repeated values such as votes or scores in a fixed collection.',
            interviewQuestions: [
              'What methods does a tuple support?',
              'Why are tuples helpful in fixed data scenarios?',
            ],
          ),
          Lesson(
            id: 6,
            title: 'Tuples with Loops',
            duration: '6 min',
            theory:
                'You can loop through a tuple just like a list. This is useful when you want to read every item in a fixed collection without changing it. Loops make tuple data easy to process and display.',
            code: '''
fruits = ('apple', 'banana', 'mango')
for fruit in fruits:
    print(fruit)
''',
            output: '''
apple
banana
mango
''',
            realWorldExample:
                'Printing every product name in a fixed catalog.',
            interviewQuestions: [
              'How do you loop through a tuple?',
              'Why are tuples useful with loops?',
            ],
          ),
          Lesson(
            id: 7,
            title: 'Tuple Slicing',
            duration: '5 min',
            theory:
                'Slicing also works with tuples. You can extract a subset of values using the same start and end syntax. This lets you work with part of a tuple without changing the original data.',
            code: '''
values = (10, 20, 30, 40)
print(values[1:3])
''',
            output: '''
(20, 30)
''',
            realWorldExample:
                'Selecting a portion of fixed data like a time range or a price range.',
            interviewQuestions: [
              'How do you slice a tuple?',
              'What does tuple slicing return?',
            ],
          ),
          Lesson(
            id: 8,
            title: 'Tuples vs Lists in Practice',
            duration: '6 min',
            theory:
                'Lists are more flexible because you can modify them, but tuples are safer. In practice, a list is better when the data changes often, while a tuple is better when you want the values to stay fixed and protected.',
            code: '''
my_list = [1, 2, 3]
my_tuple = (1, 2, 3)
my_list[0] = 9
print(my_list)
''',
            output: '''
[9, 2, 3]
''',
            realWorldExample:
                'Choosing a tuple for fixed values and a list for editable data.',
            interviewQuestions: [
              'When would you choose a list over a tuple?',
              'When would you choose a tuple over a list?',
            ],
          ),
          Lesson(
            id: 9,
            title: 'Nested Tuples',
            duration: '6 min',
            theory:
                'A tuple can also contain other tuples or mixed values. This makes it useful for grouped data that should remain constant. Nested tuples are common in structured records and simple data storage.',
            code: '''
student = (('Asha', 90), ('Ravi', 85))
print(student[1][0])
''',
            output: '''
Ravi
''',
            realWorldExample:
                'Representing multiple fixed records such as student scores.',
            interviewQuestions: [
              'What is a nested tuple?',
              'How do you access an item inside a nested tuple?',
            ],
          ),
          Lesson(
            id: 10,
            title: 'Mini Project: Fixed Student Record',
            duration: '7 min',
            theory:
                'A tuple is a nice choice when you want to store a fixed record such as a student’s name and marks. You can unpack it, print it, and use it without worrying that the values will be accidentally changed.',
            code: '''
student = ('Asha', 88, 'Science')
name, mark, subject = student
print(name, 'scored', mark, 'in', subject)
''',
            output: '''
Asha scored 88 in Science
''',
            realWorldExample:
                'Building a simple fixed record for a school report.',
            interviewQuestions: [
              'Why is a tuple a good fit for fixed records?',
              'How can tuple unpacking help in this example?',
            ],
          ),
        ];
      case 'dictionary':
        return const [
          Lesson(
            id: 1,
            title: 'Introduction to Dictionaries',
            duration: '5 min',
            theory:
                'A dictionary stores data as key-value pairs. Each key is unique, and each key is connected to a value. This makes dictionaries perfect for storing information like a person’s name and age, or a product name and its price.',
            code: '''
student = {'name': 'Ava', 'age': 21}
print(student)
''',
            output: '''
{'name': 'Ava', 'age': 21}
''',
            realWorldExample:
                'Storing user profile information such as name, age, and email.',
            interviewQuestions: [
              'What is a dictionary?',
              'What is a key-value pair?',
            ],
          ),
          Lesson(
            id: 2,
            title: 'Accessing Dictionary Values',
            duration: '5 min',
            theory:
                'You can access a value in a dictionary using its key. This is very useful because you do not need to remember the position of the value, only the meaningful name of the key. Dictionaries make code easier to read.',
            code: '''
student = {'name': 'Ava', 'age': 21}
print(student['name'])
print(student['age'])
''',
            output: '''
Ava
21
''',
            realWorldExample:
                'Finding a customer’s email address or phone number from a dictionary.',
            interviewQuestions: [
              'How do you access a value in a dictionary?',
              'Why are dictionary keys useful?',
            ],
          ),
          Lesson(
            id: 3,
            title: 'Adding, Updating, and Deleting Items',
            duration: '6 min',
            theory:
                'Dictionaries are mutable, so you can add new key-value pairs, update existing values, or remove entries. This helps when your program receives new information or when data changes over time.',
            code: '''
student = {'name': 'Ava', 'age': 21}
student['city'] = 'Delhi'
student['age'] = 22
student.pop('city')
print(student)
''',
            output: '''
{'name': 'Ava', 'age': 22}
''',
            realWorldExample:
                'Updating a user account after they change their address or age.',
            interviewQuestions: [
              'How do you add a new item to a dictionary?',
              'How do you update an existing value?',
            ],
          ),
          Lesson(
            id: 4,
            title: 'Looping Through Dictionaries',
            duration: '6 min',
            theory:
                'You can loop through dictionaries to read keys, values, or both. This is helpful when you want to display every item in the dictionary or process each record in a program.',
            code: '''
student = {'name': 'Ava', 'age': 21, 'city': 'Delhi'}
for key, value in student.items():
    print(key, value)
''',
            output: '''
name Ava
age 21
city Delhi
''',
            realWorldExample:
                'Displaying all details of a user profile on a screen.',
            interviewQuestions: [
              'How do you loop through a dictionary?',
              'What does items() return?',
            ],
          ),
          Lesson(
            id: 5,
            title: 'Nested Dictionaries and Real-World Examples',
            duration: '7 min',
            theory:
                'A dictionary can contain another dictionary or a list of dictionaries. This is very useful for representing more complex data such as a student record, a product catalog, or a company directory.',
            code: '''
company = {
    'employee': {
        'name': 'Ravi',
        'role': 'Developer'
    }
}
print(company['employee']['name'])
''',
            output: '''
Ravi
''',
            realWorldExample:
                'Representing employee details in an HR system.',
            interviewQuestions: [
              'What is a nested dictionary?',
              'How do you access a value inside a nested dictionary?',
            ],
          ),
          Lesson(
            id: 6,
            title: 'Checking Keys and Values',
            duration: '5 min',
            theory:
                'You can check whether a key exists using in, and you can also inspect the list of keys and values separately. This helps you validate data and avoid errors when reading missing entries.',
            code: '''
student = {'name': 'Ava', 'age': 21}
print('name' in student)
print(student.keys())
print(student.values())
''',
            output: '''
True
dict_keys(['name', 'age'])
dict_values([['Ava', 21]])
''',
            realWorldExample:
                'Checking whether a product exists in a catalog before loading it.',
            interviewQuestions: [
              'How do you check whether a key exists?',
              'What is the difference between keys() and values()?',
            ],
          ),
          Lesson(
            id: 7,
            title: 'Dictionary Comprehensions',
            duration: '6 min',
            theory:
                'Dictionary comprehensions let you create dictionaries in a compact way. They are useful when you want to transform data or build a mapping from one structure to another.',
            code: '''
squares = {x: x * x for x in range(3)}
print(squares)
''',
            output: '''
{0: 0, 1: 1, 2: 4}
''',
            realWorldExample:
                'Creating a number-to-square mapping quickly.',
            interviewQuestions: [
              'What is a dictionary comprehension?',
              'When would you use one?',
            ],
          ),
          Lesson(
            id: 8,
            title: 'Merging Dictionaries',
            duration: '6 min',
            theory:
                'You can combine dictionaries in Python using update or unpacking. This is useful when you want to add data from one source into another without rewriting the whole structure.',
            code: '''
user = {'name': 'Ava'}
extra = {'age': 21, 'city': 'Delhi'}
user.update(extra)
print(user)
''',
            output: '''
{'name': 'Ava', 'age': 21, 'city': 'Delhi'}
''',
            realWorldExample:
                'Combining customer information from two forms.',
            interviewQuestions: [
              'How do you merge two dictionaries?',
              'What does update() do?',
            ],
          ),
          Lesson(
            id: 9,
            title: 'Dictionary Methods',
            duration: '6 min',
            theory:
                'Dictionaries come with useful methods like get, pop, clear, and copy. These methods make it easier to access values safely and manage data without raising errors.',
            code: '''
student = {'name': 'Ava', 'age': 21}
print(student.get('name'))
print(student.get('city', 'Unknown'))
''',
            output: '''
Ava
Unknown
''',
            realWorldExample:
                'Safely reading profile data even if a field is missing.',
            interviewQuestions: [
              'What does get() do?',
              'Why is get() helpful?',
            ],
          ),
          Lesson(
            id: 10,
            title: 'Mini Project: Student Database',
            duration: '8 min',
            theory:
                'A dictionary is perfect for storing a student record because each field has a clear meaning. You can store a name, age, subject, and marks in one structure and then update or print each part easily.',
            code: '''
student = {'name': 'Asha', 'age': 20, 'marks': 88}
student['subject'] = 'Python'
print(student)
''',
            output: '''
{'name': 'Asha', 'age': 20, 'marks': 88, 'subject': 'Python'}
''',
            realWorldExample:
                'Building a simple profile or student database for an app.',
            interviewQuestions: [
              'Why are dictionaries useful for student records?',
              'How would you add a new field to a dictionary?',
            ],
          ),
        ];
      case 'sets':
        return const [
          Lesson(
            id: 1,
            title: 'Introduction to Sets',
            duration: '5 min',
            theory:
                'A set is a collection of unique items. It is useful when you want to remove duplicates and quickly check whether something exists. Sets do not keep order, so they are different from lists and tuples.',
            code: '''
values = {1, 2, 2, 3}
print(values)
''',
            output: '''
{1, 2, 3}
''',
            realWorldExample:
                'Keeping a list of unique user IDs or unique tags.',
            interviewQuestions: [
              'What is a set?',
              'How is a set different from a list?',
            ],
          ),
          Lesson(
            id: 2,
            title: 'Adding and Removing Set Items',
            duration: '5 min',
            theory:
                'You can add items to a set using add, and remove items using remove or discard. Sets are helpful when you need to manage a group of unique values without duplicates.',
            code: '''
colors = {'red', 'blue'}
colors.add('green')
colors.remove('blue')
print(colors)
''',
            output: '''
{'red', 'green'}
''',
            realWorldExample:
                'Managing a list of unique product categories in a store.',
            interviewQuestions: [
              'How do you add an element to a set?',
              'What is the difference between remove and discard?',
            ],
          ),
          Lesson(
            id: 3,
            title: 'Set Operations',
            duration: '6 min',
            theory:
                'Sets support operations such as union, intersection, and difference. These operations help compare and combine groups of data efficiently. They are often used in mathematics and data analysis.',
            code: '''
a = {1, 2, 3}
b = {3, 4, 5}
print(a | b)
print(a & b)
print(a - b)
''',
            output: '''
{1, 2, 3, 4, 5}
{3}
{1, 2}
''',
            realWorldExample:
                'Comparing two customer groups or finding common interests.',
            interviewQuestions: [
              'What is set union?',
              'What is the difference between intersection and difference?',
            ],
          ),
          Lesson(
            id: 4,
            title: 'Membership Testing in Sets',
            duration: '5 min',
            theory:
                'You can quickly check whether an item exists in a set using the in operator. Sets are designed for fast membership testing, which makes them useful for large collections of unique items.',
            code: '''
fruits = {'apple', 'banana', 'mango'}
print('apple' in fruits)
print('grape' in fruits)
''',
            output: '''
True
False
''',
            realWorldExample:
                'Checking whether a username or product code already exists.',
            interviewQuestions: [
              'How do you test membership in a set?',
              'Why are sets good for membership checks?',
            ],
          ),
          Lesson(
            id: 5,
            title: 'Set Comprehensions and Best Use Cases',
            duration: '6 min',
            theory:
                'Just like lists, sets can be created using comprehension. This is useful when you want a quick collection of unique values from another structure. Sets are a great choice when duplicates should be removed automatically.',
            code: '''
nums = [1, 2, 2, 3, 3]
unique_nums = {x for x in nums}
print(unique_nums)
''',
            output: '''
{1, 2, 3}
''',
            realWorldExample:
                'Creating a unique collection of tags or filtered categories.',
            interviewQuestions: [
              'What is a set comprehension?',
              'When would you use a set instead of a list?',
            ],
          ),
          Lesson(
            id: 6,
            title: 'Looping Through Sets',
            duration: '5 min',
            theory:
                'Sets are iterable, which means you can loop through them. Since sets do not preserve order, you should not depend on the order of items while iterating over them.',
            code: '''
letters = {'a', 'b', 'c'}
for letter in letters:
    print(letter)
''',
            output: '''
a
b
c
''',
            realWorldExample:
                'Reading through a group of unique categories or tags.',
            interviewQuestions: [
              'How do you loop through a set?',
              'Why should you avoid relying on set order?',
            ],
          ),
          Lesson(
            id: 7,
            title: 'Frozen Sets',
            duration: '5 min',
            theory:
                'A frozenset is an immutable version of a set. It cannot be changed after creation, which makes it useful when you want a fixed collection of unique items.',
            code: '''
fs = frozenset({'a', 'b', 'c'})
print(fs)
''',
            output: '''
frozenset({'a', 'b', 'c'})
''',
            realWorldExample:
                'Storing a fixed collection of allowed values for a program.',
            interviewQuestions: [
              'What is a frozenset?',
              'How is it different from a normal set?',
            ],
          ),
          Lesson(
            id: 8,
            title: 'Sets and Duplicates',
            duration: '5 min',
            theory:
                'One of the biggest strengths of a set is that it automatically removes duplicate values. This makes it ideal for cleaning up repeated data before processing it.',
            code: '''
items = ['apple', 'apple', 'banana', 'mango']
unique_items = set(items)
print(unique_items)
''',
            output: '''
{'apple', 'banana', 'mango'}
''',
            realWorldExample:
                'Removing duplicates from a customer list or poll response list.',
            interviewQuestions: [
              'How does a set handle duplicates?',
              'Why is this useful?',
            ],
          ),
          Lesson(
            id: 9,
            title: 'Set Differences in Practice',
            duration: '6 min',
            theory:
                'Set difference helps you find items that appear in one group but not another. This is useful for comparing data, such as users who joined one platform but not another.',
            code: '''
a = {'Ava', 'Ravi', 'Meera'}
b = {'Ravi', 'Kiran'}
print(a - b)
''',
            output: '''
{'Ava', 'Meera'}
''',
            realWorldExample:
                'Finding users who are in one group but not another.',
            interviewQuestions: [
              'What does set difference do?',
              'How is it useful in real data?',
            ],
          ),
          Lesson(
            id: 10,
            title: 'Mini Project: Unique Tag Collector',
            duration: '7 min',
            theory:
                'A set is a perfect fit for collecting unique tags from user input or a product list. You can add tags, ignore duplicates, and then print the final collection.',
            code: '''
tags = {'python', 'coding'}
tags.add('python')
tags.add('data')
print(tags)
''',
            output: '''
{'python', 'coding', 'data'}
''',
            realWorldExample:
                'Collecting unique labels for blog posts or content categories.',
            interviewQuestions: [
              'Why are sets useful for tags?',
              'How do they help remove duplicates?',
            ],
          ),
        ];
      case 'functions':
        return const [
          Lesson(
            id: 1,
            title: 'Function Basics',
            duration: '6 min',
            theory:
                'A function is a block of reusable code. It helps you avoid writing the same logic again and again. Functions make programs easier to read, organize, and maintain. They are one of the core ideas in Python programming. You can think of a function as a small machine that performs one job whenever you call it.',
            code: '''
def greet():
    print('Hello, Python!')

def say_bye():
    print('Goodbye!')

greet()
say_bye()
''',
            output: '''
Hello, Python!
Goodbye!
''',
            realWorldExample:
                'Creating reusable greeting and exit messages in a small app or website.',
            interviewQuestions: [
              'What is a function?',
              'Why are functions useful?',
              'How is a function different from normal code written directly?',
            ],
          ),
          Lesson(
            id: 2,
            title: 'Parameters and Arguments',
            duration: '6 min',
            theory:
                'Functions can take inputs called parameters. When you call a function, you give it values called arguments. This makes one function flexible enough to work for different inputs. A simple example is a greeting function that works for any name.',
            code: '''
def greet(name):
    print('Hello', name)

def add_numbers(a, b):
    print(a + b)

greet('Ava')
greet('Ravi')
add_numbers(2, 3)
add_numbers(10, 20)
''',
            output: '''
Hello Ava
Hello Ravi
5
30
''',
            realWorldExample:
                'Greeting different users and calculating totals for different orders.',
            interviewQuestions: [
              'What is the difference between a parameter and an argument?',
              'How do you pass data into a function?',
              'Can one function work with multiple values?',
            ],
          ),
          Lesson(
            id: 3,
            title: 'Return Values',
            duration: '6 min',
            theory:
                'A function can return a result to the caller using the return statement. This makes functions more powerful because they can compute something and send the output back for further use. Instead of only printing, the function can give you data you can store or reuse.',
            code: '''
def add(a, b):
    return a + b

def is_even(number):
    return number % 2 == 0

print(add(2, 3))
print(is_even(6))
print(is_even(5))
''',
            output: '''
5
True
False
''',
            realWorldExample:
                'Calculating totals for bills, checking whether a number is even, or validating user input.',
            interviewQuestions: [
              'What does return do?',
              'How is a returned value used?',
              'What is the difference between print and return?',
            ],
          ),
          Lesson(
            id: 4,
            title: 'Default Parameters and Keyword Arguments',
            duration: '6 min',
            theory:
                'You can give parameters default values so that the function still works if the caller does not provide them. Keyword arguments let you pass values by name, which makes code clearer and easier to read. This is especially helpful in larger programs where the function has many inputs.',
            code: '''
def welcome(name='Guest', city='Delhi'):
    print('Welcome', name, 'from', city)

welcome()
welcome('Ava')
welcome(name='Ravi', city='Mumbai')
''',
            output: '''
Welcome Guest from Delhi
Welcome Ava from Delhi
Welcome Ravi from Mumbai
''',
            realWorldExample:
                'Using a default user name and city in a profile or login screen.',
            interviewQuestions: [
              'What is a default parameter?',
              'What is a keyword argument?',
              'Why are keyword arguments helpful?',
            ],
          ),
          Lesson(
            id: 5,
            title: 'Scope and Reusable Logic',
            duration: '7 min',
            theory:
                'Variables created inside a function usually stay local to that function. This prevents unexpected changes in other parts of the program. Understanding scope helps you write functions that are safe and reliable. A variable created inside one function does not automatically affect another function.',
            code: '''
message = 'Global message'

def show_message():
    local_message = 'Local message'
    print(local_message)
    print(message)

show_message()
print(message)
''',
            output: '''
Local message
Global message
Global message
''',
            realWorldExample:
                'Keeping temporary values inside a function without affecting the rest of the app.',
            interviewQuestions: [
              'What is variable scope?',
              'Why is it helpful to keep variables local?',
              'What is the difference between global and local variables?',
            ],
          ),
          Lesson(
            id: 6,
            title: 'Functions Calling Other Functions',
            duration: '6 min',
            theory:
                'Functions can call other functions, which helps you split big tasks into smaller manageable pieces. This makes code neater and easier to understand. Instead of writing everything in one long function, you can break the work into smaller steps.',
            code: '''
def greet(name):
    return f'Hello {name}'

def format_message(name):
    return greet(name) + ' and welcome!'

def show_message(name):
    print(format_message(name))

show_message('Ava')
show_message('Ravi')
''',
            output: '''
Hello Ava and welcome!
Hello Ravi and welcome!
''',
            realWorldExample:
                'Breaking a checkout process into smaller steps such as greeting, validating, and confirming.',
            interviewQuestions: [
              'Can one function call another function?',
              'Why is this useful?',
              'How does breaking logic into smaller functions help?',
            ],
          ),
          Lesson(
            id: 7,
            title: 'Recursion Basics',
            duration: '7 min',
            theory:
                'Recursion is when a function calls itself to solve a smaller version of the same problem. It is a powerful technique, but beginners should use it carefully to avoid infinite loops. A recursive function usually has a base case that stops the process.',
            code: '''
def countdown(n):
    if n <= 0:
        return
    print(n)
    countdown(n - 1)

def factorial(n):
    if n == 1:
        return 1
    return n * factorial(n - 1)

countdown(3)
print(factorial(5))
''',
            output: '''
3
2
1
120
''',
            realWorldExample:
                'Navigating folders, processing nested structures, or calculating factorials in math programs.',
            interviewQuestions: [
              'What is recursion?',
              'What must a recursive function have?',
              'Why is a base case important?',
            ],
          ),
          Lesson(
            id: 8,
            title: 'Lambda Functions and Higher-Order Functions',
            duration: '7 min',
            theory:
                'A lambda function is a small anonymous function. It is useful when you want a quick function for a simple operation without defining a full function with def. In Python, lambda functions often work well with map, filter, and reduce to process lists quickly.',
            code: '',
            output: '',
            examples: [
              Example(
                code: '''
from functools import reduce
numbers = [1, 2, 3, 4, 5]
square = lambda x: x * x
print(list(map(square, numbers)))
            ''',
                output: '''
[1, 4, 9, 16, 25]
            ''',
              ),

              Example(
                code: '''
numbers = [1, 2, 3, 4, 5]

even_numbers = list(filter(lambda x: x % 2 == 0, numbers))
print(even_numbers)
            ''',
                output: '''
[2, 4]
            ''',
              ),

              Example(
                code: '''
from functools import reduce

numbers = [1, 2, 3, 4, 5]

sum_numbers = reduce(lambda a, b: a + b, numbers)
print(sum_numbers)
            ''',
                output: '''
15
            ''',
              ),

              Example(
                code: '''
names = ['Ava', 'Ravi', 'Meera']

upper_names = list(map(lambda name: name.upper(), names))
print(upper_names)
            ''',
                output: '''
['AVA', 'RAVI', 'MEERA']
            ''',
              ),
            ],
                        realWorldExample:
                            'Transforming grades, filtering active users, or calculating totals from a list of values.',
                        interviewQuestions: [
                          'What is a lambda function?',
                          'What is map used for?',
                          'What is filter used for?',
                          'What does reduce do?',
                        ],
                      ),
                      Lesson(
                        id: 9,
                        title: 'Functions and Lists',
                        duration: '6 min',
                        theory:
                            'A function can accept a list as a parameter and return a result based on the list. This is very useful when you want to process collections of values in one place. Functions become powerful when they can work with many items at once.',
                        code: '''
            def total(nums):
                return sum(nums)

            def find_max(nums):
                return max(nums)

            def keep_positive(nums):
                return [x for x in nums if x > 0]

            print(total([10, 20, 30]))
            print(find_max([4, 9, 2, 7]))
            print(keep_positive([-2, 3, -1, 5]))
            ''',
                        output: '''
            60
            9
            [3, 5]
            ''',
            realWorldExample:
                'Calculating the sum of prices, finding the highest score, or filtering out negative values from a dataset.',
            interviewQuestions: [
              'Can functions work with lists?',
              'How does returning a value from a list-based function help?',
              'Why are list-based functions useful?',
            ],
          ),
          Lesson(
            id: 10,
            title: 'Mini Project: Calculator Function',
            duration: '8 min',
            theory:
                'You can build a small calculator by writing functions for addition, subtraction, multiplication, and division. This project helps connect function concepts with real-world problem solving. You can also combine them with user input and return values to create a complete mini app.',
            code: '''
def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multiply(a, b):
    return a * b

def divide(a, b):
    return a / b

print(add(4, 5))
print(subtract(10, 3))
print(multiply(3, 6))
print(divide(20, 4))
''',
            output: '''
9
7
18
5.0
''',
            realWorldExample:
                'Creating basic operations for a finance app, math app, or simple calculator tool.',
            interviewQuestions: [
              'How do functions help build a calculator?',
              'Why is reuse important in this example?',
              'How would you extend this project further?',
            ],
          ),
        ];
      case 'classes':
        return const [
          Lesson(
            id: 1,
            title: 'Class Basics',
            duration: '6 min',
            theory:
                'A class is a blueprint for creating objects. It defines the structure and behavior of something in your program, such as a student, a car, or a bank account. Classes are a core idea in object-oriented programming, and they help you model real-world ideas in a clean way.',
            code: '''
class Dog:
    pass

class Car:
    pass

my_dog = Dog()
my_car = Car()
print(type(my_dog))
print(type(my_car))
''',
            output: '''
<class '__main__.Dog'>
<class '__main__.Car'>
''',
            realWorldExample:
                'Representing a product, a person, or a vehicle as an object in an app.',
            interviewQuestions: [
              'What is a class?',
              'What is an object?',
              'How is a class different from an object?',
            ],
          ),
          Lesson(
            id: 2,
            title: 'Attributes and the __init__ Method',
            duration: '7 min',
            theory:
                'An object can store data through attributes. The __init__ method is used to initialize those attributes when an object is created. This helps every object start with its own set of values, which is important when you want different objects to behave differently.',
            code: '''
class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age

class Student:
    def __init__(self, name, grade):
        self.name = name
        self.grade = grade

my_dog = Dog('Buddy', 3)
student = Student('Asha', 78)
print(my_dog.name, my_dog.age)
print(student.name, student.grade)
''',
            output: '''
Buddy 3
Asha 78
''',
            realWorldExample:
                'Creating a user profile with an initial name and age, or storing student details.',
            interviewQuestions: [
              'What is the __init__ method?',
              'What is an attribute?',
              'Why do we use self in __init__?',
            ],
          ),
          Lesson(
            id: 3,
            title: 'Methods and self',
            duration: '7 min',
            theory:
                'Methods are functions that belong to a class. They define what an object can do. The self keyword allows a method to access and modify the object’s own attributes. This is what makes objects useful: they hold both data and behavior.',
            code: '''
class Dog:
    def __init__(self, name):
        self.name = name

    def bark(self):
        return 'woof'

    def describe(self):
        return f'My name is {self.name}'

print(Dog('Buddy').bark())
print(Dog('Buddy').describe())
''',
            output: '''
woof
My name is Buddy
''',
            realWorldExample:
                'Giving a product or user object the ability to describe itself or perform actions.',
            interviewQuestions: [
              'What is a method?',
              'Why do we use self?',
              'How is a method different from a regular function?',
            ],
          ),
          Lesson(
            id: 4,
            title: 'Inheritance',
            duration: '7 min',
            theory:
                'Inheritance allows one class to reuse the features of another class. This is useful when you want to create a specialized version of an existing class without rewriting everything from scratch. A child class can inherit behavior from a parent class and add its own features.',
            code: '''
class Animal:
    def speak(self):
        return 'Animal sound'

class Dog(Animal):
    def speak(self):
        return 'Bark'

class Cat(Animal):
    def speak(self):
        return 'Meow'

print(Dog().speak())
print(Cat().speak())
''',
            output: '''
Bark
Meow
''',
            realWorldExample:
                'Creating different account types or vehicle types that share common behavior.',
            interviewQuestions: [
              'What is inheritance?',
              'Why is inheritance useful?',
              'How does a child class relate to a parent class?',
            ],
          ),
          Lesson(
            id: 5,
            title: 'Objects in Real-Life Modeling',
            duration: '7 min',
            theory:
                'Classes are used to model real-world entities like students, employees, cars, and bank accounts. By combining data and behavior into objects, your program becomes easier to understand and manage. This is the heart of object-oriented programming.',
            code: '''
class Student:
    def __init__(self, name, grade):
        self.name = name
        self.grade = grade

    def is_pass(self):
        return self.grade >= 50

    def display(self):
        return f'{self.name}: {self.grade}'

student1 = Student('Asha', 78)
student2 = Student('Ravi', 40)
print(student1.is_pass())
print(student2.is_pass())
print(student1.display())
''',
            output: '''
True
False
Asha: 78
''',
            realWorldExample:
                'Representing students in a school management system or users in an app.',
            interviewQuestions: [
              'How are classes used to model real life?',
              'What is the purpose of methods in a class?',
              'Why do we need multiple objects?',
            ],
          ),
          Lesson(
            id: 6,
            title: 'Class Variables and Instance Variables',
            duration: '7 min',
            theory:
                'Class variables are shared by all objects of a class, while instance variables are unique to each object. Understanding the difference helps you design cleaner and more predictable objects. Use class variables for shared properties and instance variables for individual values.',
            code: '''
class Dog:
    species = 'canine'

    def __init__(self, name):
        self.name = name

class Employee:
    company = 'ABC Corp'

    def __init__(self, name):
        self.name = name

print(Dog.species)
print(Dog('Buddy').name)
print(Employee.company)
print(Employee('Ava').name)
''',
            output: '''
canine
Buddy
ABC Corp
Ava
''',
            realWorldExample:
                'Tracking common settings for many user accounts or shared company details.',
            interviewQuestions: [
              'What is a class variable?',
              'What is an instance variable?',
              'When would you use each one?',
            ],
          ),
          Lesson(
            id: 7,
            title: 'Encapsulation Basics',
            duration: '6 min',
            theory:
                'Encapsulation means keeping data and methods together inside a class and controlling how they are accessed. This helps protect the object’s internal state and makes code safer. You can think of it as putting related information into one box and exposing only what is needed.',
            code: '''
class BankAccount:
    def __init__(self):
        self.balance = 100

    def deposit(self, amount):
        self.balance += amount

    def withdraw(self, amount):
        self.balance -= amount

account = BankAccount()
account.deposit(50)
account.withdraw(20)
print(account.balance)
''',
            output: '''
130
''',
            realWorldExample:
                'Managing account balances in a banking app or wallet application.',
            interviewQuestions: [
              'What is encapsulation?',
              'Why is it helpful?',
              'How do methods protect object data?',
            ],
          ),
          Lesson(
            id: 8,
            title: 'Polymorphism',
            duration: '6 min',
            theory:
                'Polymorphism means different objects can respond to the same method call in different ways. This is a powerful object-oriented idea that allows you to write flexible code and work with many objects using the same interface.',
            code: '''
class Cat:
    def sound(self):
        return 'Meow'

class Dog:
    def sound(self):
        return 'Bark'

class Cow:
    def sound(self):
        return 'Moo'

for animal in [Cat(), Dog(), Cow()]:
    print(animal.sound())
''',
            output: '''
Meow
Bark
Moo
''',
            realWorldExample:
                'Handling different vehicle types, product categories, or animal objects with the same action.',
            interviewQuestions: [
              'What is polymorphism?',
              'Why is it useful?',
              'How does it make code flexible?',
            ],
          ),
          Lesson(
            id: 9,
            title: 'Class Methods and Static Methods',
            duration: '7 min',
            theory:
                'Class methods work with the class itself, while static methods do not depend on instance data. They are helpful when you want shared functionality that does not need an object instance. This is especially useful for utility logic and helper operations.',
            code: '''
class MathHelper:
    @staticmethod
    def add(a, b):
        return a + b

    @staticmethod
    def multiply(a, b):
        return a * b

class Employee:
    company = 'ABC Corp'

    @classmethod
    def show_company(cls):
        return cls.company

print(MathHelper.add(2, 3))
print(MathHelper.multiply(4, 5))
print(Employee.show_company())
''',
            output: '''
5
20
ABC Corp
''',
            realWorldExample:
                'Creating helper operations in a utility class or showing shared company details.',
            interviewQuestions: [
              'What is a static method?',
              'How is it different from an instance method?',
              'What is a class method used for?',
            ],
          ),
          Lesson(
            id: 10,
            title: 'Mini Project: Student Class',
            duration: '8 min',
            theory:
                'You can model a student using a class with attributes and methods. This project combines many class concepts into one simple example that feels very practical. It shows how classes help represent real life in clean and organized code.',
            code: '''
class Student:
    def __init__(self, name, grade):
        self.name = name
        self.grade = grade

    def is_pass(self):
        return self.grade >= 50

    def improve(self, points):
        self.grade += points

student = Student('Asha', 78)
print(student.is_pass())
student.improve(5)
print(student.grade)
''',
            output: '''
True
83
''',
            realWorldExample:
                'Building a student management system for a school app or an online learning platform.',
            interviewQuestions: [
              'How can a class represent a student?',
              'What methods would make this class more useful?',
              'How would you extend this class further?',
            ],
          ),
        ];
      default:
        return const [];
    }
  }
}
