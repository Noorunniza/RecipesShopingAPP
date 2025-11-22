

import Foundation
import SwiftUI

// Shared cart manager
class CartManager: ObservableObject {
    @Published var cartItems: [Recipies] = []
}

// Global shared instance
let globalCart = CartManager()
