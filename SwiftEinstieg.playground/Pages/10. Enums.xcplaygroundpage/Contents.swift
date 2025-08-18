import Foundation

// Enum is the same as Struct exept we know all cases at runtime

struct CarModel {
    let brand: CarBrandOption
    let model: String
}

// Enums are stored in memory the same way as a Struct but we cannot mutate them
enum CarBrandOption {
    case ford, toyota, honda, nissan, volkswagen, peugeot, citroen, renault, kia, volvo, hyundai, lexus, acura, bmw, mazda, mitsubishi, chrysler, infiniti, jaguar, lincoln, tesla
    
    var title: String {
        // self is here the CarBrandOptoin itself
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        case . honda:
            return "Honda"
        default:
            return "Default"
        }
        
//        if self == .ford {
//            return "Ford"
//        } else if self == .toyota {
//            return "Toyota"
//        } else if self == .honda {
//            return "Honda"
//        } else if self == .nissan {
//            return "Nissan"
//        } else {
//            return "Default value"
//        }
    }
}

// when you write after "brand: " a "." you get a dropdown with all possible options
var car1 = CarModel(brand: .ford, model: "Fiesta")
var car2 = CarModel(brand: .ford, model: "Focus")
var car3 = CarModel(brand: .toyota, model: "Camry")
var car4 = CarModel(brand: .bmw, model: "E36")

print(car4.brand.title)
