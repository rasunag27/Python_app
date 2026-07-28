import '../../models/mcq_question.dart';

final List<McqQuestion> listMcqs = [

  McqQuestion(
    id: 1,
    question: "Which of the following creates an empty list?",
    options: [
      "()",
      "{}",
      "[]",
      "<>",
    ],
    correctAnswer: 2,
    explanation: "Square brackets [] are used to create a list.",
  ),

  McqQuestion(
    id: 2,
    question: "Which data type is mutable?",
    options: [
      "Tuple",
      "String",
      "List",
      "Integer",
    ],
    correctAnswer: 2,
    explanation: "Lists are mutable, meaning their elements can be modified.",
  ),

  McqQuestion(
    id: 3,
    question: "Which method adds an element to the end of a list?",
    options: [
      "insert()",
      "append()",
      "extend()",
      "add()",
    ],
    correctAnswer: 1,
    explanation: "append() adds a single element to the end of the list.",
  ),

  McqQuestion(
    id: 4,
    question: "Which method removes the last element from a list?",
    options: [
      "delete()",
      "remove()",
      "pop()",
      "discard()",
    ],
    correctAnswer: 2,
    explanation: "pop() removes and returns the last element by default.",
  ),

  McqQuestion(
    id: 5,
    question: "What is the index of the first element in a Python list?",
    options: [
      "1",
      "-1",
      "0",
      "Depends on the list",
    ],
    correctAnswer: 2,
    explanation: "Python uses zero-based indexing.",
  ),

];