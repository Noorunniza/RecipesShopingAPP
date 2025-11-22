

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cart = globalCart
    
    var body: some View {
        TabView {
            RecipiesUIView()
                .badge(10)
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("Recipies")
                }
            
            // 🛒 Second tab: show added items
            List {
                ForEach(cart.cartItems) { item in
                    HStack(alignment: .center, spacing: 12) {
                        Image(item.img)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                        
                        Text(item.name)
                            .font(.headline)
                    }
                }
                // ✅ simple delete swipe
                .onDelete { indexSet in
                    cart.cartItems.remove(atOffsets: indexSet)
                }
            }
            .listStyle(.plain)
            .padding(.top, 50) // 👈 adds 20 points of top padding
            .tabItem {
                Image(systemName: "square.fill")
                Text("Cart")
            }
        }.padding()
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
