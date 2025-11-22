

import SwiftUI

struct RecipieDetails: View {
    @ObservedObject var cart = globalCart
    
    let recipies: Recipies
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 16){
                
               
                                Button(action: {
                                    cart.cartItems.append(recipies)
                                }) {
                                    Text("➕ Add to Cart")
                                        .font(.subheadline)
                                        .padding(6)
                                        .background(Color.blue.opacity(0.2))
                                        .cornerRadius(8)
                                }
                
                Image(recipies.img)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(10)
                    .shadow( radius: 5)
                Text(recipies.name)
                    .font(.largeTitle)
                    .bold()
                
                Group{
                    Text("Ingredient")
                        .font(.headline)
                    
                    
                    ForEach(recipies.ingredients, id : \.self){
                        item in Text(". \(item)")
                            .padding(.leading)
                        
                    }
                    
                    }
            }.padding()
            
        }
    }
}

struct RecipieDetails_Previews: PreviewProvider {
    static var previews: some View {
        RecipieDetails(recipies: recipieArray[0])
    }
}
