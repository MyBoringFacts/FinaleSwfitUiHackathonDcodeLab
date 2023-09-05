//
//  CourseDataService.swift
//  QuizApp
//
//  Created by Lu Maw on 02/09/2023.
//

//CONNECT DATA SERVICE
import Foundation
class CourseDataService{
    static let topics: [Topic] = [
        Topic(
            title: "Primitive Types",
            description: """
                        A type is a set of values (e.g. integers, floaters, etc.) and a set of operations (e.g. +, -, *, /, etc.) on them.
                        
                        Data types can be categorized as either primitive or reference.
                        
                        The primitive types used in this course define the set of operations for numbers and boolean (true/false) values.
                        
                        Examples are int, double, and boolean.
                        Read more about this at:
                        https://longbaonguyen.github.io/courses/apcsa/lecture2.pdf.
                        """,
            videoId: "cgp5ulbsdJ0"),
        
        Topic(
            title: "Using Objects",
              description: """
                        A string is an object storing a sequence of text characters.
                        - A string is not a primitive type. String is an object type

                        Ways to initialize a string:
                        - String a = new String("text");
                        - String b = "text";
                        - String c; c = "text";

                        [Read more about this]{https://longbaonguyen.github.io/courses/apcsa/lecture6.pdf}.
                        """,
            videoId: "Mm06BuD3PlY"),
        
        Topic(
            title: "Boolean Expressions and If Statements",
              description: """
                         Operators can be used to compare values with each other to run code conditionally.

                         Relational operators compare two numbers.
                         Some examples are:
                         - ==
                         - >
                         - >=
                         - <
                         -

                         Read more about this at https://longbaonguyen.github.io/courses/apcsa/lecture9.pdf.
                        """,
            videoId: "6O_lwNnWFR0"),
        
        Topic(
            title: "Iteration",
            description: """
                         A for loop is a type of loop that has a conditional statement that is usually false at first. Everytime the condition is false, the code block runs. However, it also has a statement that increments a variable after each time the code runs, making the conditional statement slowly become true.
                         Once the condition is true, the block of code stops running.

                         Read more about this at https://longbaonguyen.github.io/courses/apcsa/lecture11.pdf.
                        """,
            videoId: "G3uNYHtn83c"),
        
        Topic(
            title: "Classes",
            description: """
                         Once a java file runs, by default, it runs the main method. The main method is a public static method, and does not return anything
                         The main method also can have input(s) as an array of strings.

                         To intialize the main method, you write:
                         public static void main (String[] args) {//code here}

                         Read more about this at https://longbaonguyen.github.io/courses/apcsa/lecture13.pdf.
                        """,
            videoId: "vjjjGkXpX_I"),
        
        Topic(
            title: "Arrays",
            description: """
                         If you are working with arrays(or other collections data structures), you can use an alternative syntax for a for loop (enhanced form of for loop) to iterate through items of arrays/collections.

                         It is also referred as for-each loop because the loop iterates through each element of array/collection.

                         Read more about this at https://longbaonguyen.github.io/courses/apcsa/lecture17.pdf.
                        """,
            videoId: "cgp5ulbsdJ0"),
        
        Topic(
            title: "ArrayLists",
            description: """
                         An ArrayList (or list) is a collection storing an ordered sequence of elements.
                         - each element is acccessible by a 0-based index
                         - a list has a size (number of elements that have been added)
                         - elements can be added to the front, back, or elsewhere
                         - in Java, a list can be represented as an ArrayList object

                         Read more about this at https://longbaonguyen.github.io/courses/apcsa/lecture18.pdf.
                        """,
            videoId: "xzjZy-dHHLw"),
        
        Topic(
            title: "2D Arrays",
            description: """
                         A two-dimensional (2D) array has rows and columns.
                         A row has horizontal elements. A column has vertical elements.

                         Two dimensional arrays are especially useful when the data is naturally organized in rows and columns like in a spreadsheet, bingo, battleship, theater seats, classroom seats, connect-four game, or a picture.

                         To declare and initialzie a 2D array, write:
                         type[][] name = new type[row][col];

                         Read more about this at https://longbaonguyen.github.io/courses/apcsa/lecture18.pdf.
                        """,
            videoId: "L3-q2GxAqZA&t=173s"),
        
        Topic(
            title: "Overloading & Overriding",
            description: """
                         A two-dimensional (2D) array has rows and columns.
                         A row has horizontal elements. A column has vertical elements.

                         Two dimensional arrays are especially useful when the data is naturally organized in rows and columns like in a spreadsheet, bingo, battleship, theater seats, classroom seats, connect-four game, or a picture.

                         To declare and initialzie a 2D array, write:
                         type[][] name = new type[row][col];

                         Read more about this at https://longbaonguyen.github.io/courses/apcsa/lecture18.pdf.
                        """,
            videoId: "u4YcW-ex7Yk"),
        
        Topic(
            title: "Inheritance with Interface and Abstract Classes",
            description: """
                         A two-dimensional (2D) array has rows and columns.
                         A row has horizontal elements. A column has vertical elements.

                         Two dimensional arrays are especially useful when the data is naturally organized in rows and columns like in a spreadsheet, bingo, battleship, theater seats, classroom seats, connect-four game, or a picture.

                         To declare and initialzie a 2D array, write:
                         type[][] name = new type[row][col];

                         Read more about this at https://longbaonguyen.github.io/courses/apcsa/lecture18.pdf.
                        """,
            videoId: "zbVAU7lK25Q"),
        
        Topic(
            title: "Exception Handling",
            description: """
                         A two-dimensional (2D) array has rows and columns.
                         A row has horizontal elements. A column has vertical elements.

                         Two dimensional arrays are especially useful when the data is naturally organized in rows and columns like in a spreadsheet, bingo, battleship, theater seats, classroom seats, connect-four game, or a picture.

                         To declare and initialzie a 2D array, write:
                         type[][] name = new type[row][col];

                         Read more about this at https://longbaonguyen.github.io/courses/apcsa/lecture18.pdf.
                        """,
            videoId: "xNVlq9IEBEg"),
        
        Topic(
            title: "Multithreading",
            description: """
                         A two-dimensional (2D) array has rows and columns.
                         A row has horizontal elements. A column has vertical elements.

                         Two dimensional arrays are especially useful when the data is naturally organized in rows and columns like in a spreadsheet, bingo, battleship, theater seats, classroom seats, connect-four game, or a picture.

                         To declare and initialzie a 2D array, write:
                         type[][] name = new type[row][col];

                         Read more about this at https://longbaonguyen.github.io/courses/apcsa/lecture18.pdf.
                        """,
            videoId: "UfMM924sBvg")
    ]
    
}

let primitiveTypesQuiz: [QuizQuestion] = [
    QuizQuestion(
        question: "Which of these is a primitive data type in Java?",
        options: ["String", "int", "ArrayList", "Object"],
        correctAnswerIndex: 1
    ),
    QuizQuestion(
        question: "What does the 'boolean' data type represent in Java?",
        options: [
            "A true/false value",
            "A floating-point number",
            "A whole number",
            "A text string"
        ],
        correctAnswerIndex: 0
    ),
    QuizQuestion(
        question: "Which operator is used for equality comparison in Java?",
        options: ["==", "<", ">", "!=", "="],
        correctAnswerIndex: 0
    ),
    QuizQuestion(
        question: "What is the result of 5 + 3.5 in Java?",
        options: ["5.0", "8.5", "8", "Invalid operation"],
        correctAnswerIndex: 1
    )
]
