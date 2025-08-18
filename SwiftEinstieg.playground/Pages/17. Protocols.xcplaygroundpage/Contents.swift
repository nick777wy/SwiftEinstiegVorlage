import Foundation
import SwiftUI

// Protocol is like a interface in Java

struct EmployeeModel : EmployeeHasAName{
    var numberOfYearsWorking: Int
    var personalNumber: String
    var name: String
    let title: String
}

protocol EmployeeHasAName {
    var name: String { get }
    
    // in a protocol you always have to give a { get } or a { get set }
    
    // { get } means you can only read it
    var numberOfYearsWorking: Int { get }
    
    // { get set } means you can read & write/edit it
    var personalNumber: String { get set }
    
    // you can't use "let" in a protocol
    // only "var" is possible
    // let height: Double { get }


}
