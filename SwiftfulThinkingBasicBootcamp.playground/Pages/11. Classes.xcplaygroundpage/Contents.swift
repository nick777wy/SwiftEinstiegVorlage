import Foundation


// Classes are slow!
// Classes are stored in the Heap (memory)
// Objects in the Heap are Reference types
// Reference types point to an object in memory and update the object in memory


// All the data needed for some screen
class ScreenViewModel {
    let title: String
    pirvate(set) var showButton: Bool
    
    // Same init as a Struct, exept structs have implicit inits
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // runs as the objects is being removed from memory
        // Structs do NOT hvae deinit!
        
        func hideButton() {
            showButton = false
        }
        
        func updateShowButton(nnewValue: Bool) {
            showButton = nnewValue
        }
        
    }
}

// Notice that we are using a "let", because:
// the object itself is not changing
// the data inside the object is changing
let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)
viewModel.showButton = false







struct MyScreen {
    
}
