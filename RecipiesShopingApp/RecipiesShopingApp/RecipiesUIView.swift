
import SwiftUI



let recipieArray = [
    Recipies(
        name:"biriyani",img: "biriyani",cookingtime: "10 minutes",ingredients:[ "curryleaves","chiken","rice","oil"]),
    Recipies(
        name:"soup",img:"soup",cookingtime: "5 minutes",ingredients: ["vegitables","pepper","salt"
                                                                     ])
]



struct RecipiesUIView: View {
    @ObservedObject var cart = globalCart
    
    var body: some View {
        NavigationView{
            List(recipieArray){
                recipies in
                NavigationLink(destination : RecipieDetails(recipies: recipies)){
                    HStack{
                        Image(recipies.img)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        Text(recipies.name).font(.title3)
                            .fontWeight(.semibold)
                    }
                }
            }
            .padding(.vertical)
            .toolbar{
                ToolbarItem(
                    placement:.principal){
                        Text("Recipies app")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
//                            .padding(.top,20.0)
                    }
                
            }
        }
    }
}


struct RecipiesUIView_Previews: PreviewProvider {
    static var previews: some View {
        RecipiesUIView()
    }
}
