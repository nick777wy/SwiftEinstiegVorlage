import Foundation



/*
 
 // Object Oriented Programming
 
 // During the life the app, we create and destroy objects
 // Create - Initialize (init) = Allocate (add to memory)
 // Destroy = Deinitialize (deinit) = Deallocate (remove from memory)
 
 // Automatic Reference Counting (ARC)
 // A live count of the number of obejcts in memory
 // Create 1 object, ount goese up by 1
 // Create 2 objects, count goes up by 2
 // Destroy 1 object, count goes down by 1
 
 // The more objects in memory, the slower the app performs
 // We want to keep the ARC count as low as possible
 // We want to create objects only when we need them
 // And destroy them as soon as we no longer need them
 
 // For example, if an app has 2 screens and user is moving from screen 1 to screen 2. We only want to allocate (create) screen 2 WHEN we need it (i.e. when the user clicks a button to segue to screen 2). When we get to screen 2, we may want to deallocate screen 1.
 
 // There are 2 types of Memory
 // Stack & Heap
 // Only objects in the Heap are counted towards ARC
 
 // Objects in the Stack
 // String, Bool, Int, most basic types
 // Struct ,Enum
 
 // Objects in the Heap
 // Functions
 // Class, Actors
 
 // iPhone is a "multi-threaded enviroment"
 // There are multiple "threads" of "engines" running simultaneously
 // Each threads has a Stack
 // But there is only 1 Heap for all threads
 
 // Therefore:
 // Stack is faster, lower memory footprint, preferable
 // Heap is slower, higher memory footprint, risk of theading issues
 
 
 // Value vs Reference types
 
 // Objects in the Stack are "Value" types.
 // When you edit a Value type, you create a copy of it with new data.
 
 // Objects in the Heap are "Reference" types.
 // When you edit a Reference type, you edit the object that you are referencing. This "reference" is called "pointer" because it "points" to an object in the Heap (in memory).
 */


struct MyFirst Object {
    let title: String = "Hello, World!"
}

class MySecondObject {
    let title: String = "Hello, World!"
}


// Class vs Struct explained simple:

// Imagine a school and in the school there are classrooms.
// Within each class, tehre are quizzes.
// During the day, the teacher will hand out man ydifferent quizzes to different classes. The students will anser the quizzes and return them back to the teacher.

// "school" = App
// "classroom" = Class
// "quiz" = Struct

// In this example, we have a classroom and there are many actions that occur inside the classroom.
// In code, we create a clas and can perform actions within the class.

// In this example, there are many different types of quizzes. The teacher hands out the quizzes and the students take the quizzes and return them to the teacher.
// In code, we create many structs and pass them aound out app with ease.

// Note:
// This metaphor is NOT perfect :)
// Technical a "quiz" can be a class, etc.

// We want to use a class for things like:
// "Manager" "DataService" "Service" "Factory" "ViewModel"
// Objects that we create and want to perform actions inside.

// We want to use a struct for things like:
// Data models
// Objects that we create and pass around our app.
