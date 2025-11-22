

import Foundation

struct Recipies:Identifiable{
    let id = UUID()
    let name : String
    let img : String
    let cookingtime : String
    let ingredients : [String]
    
}
