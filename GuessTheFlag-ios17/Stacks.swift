//https://www.youtube.com/watch?v=tg7Iqtk0eWM

import SwiftUI

struct Stacks: View {
    var body: some View {
        ZStack(alignment: .top){
            Text("ZStack, First")
            Text("ZStack, Second")
        }
        
        VStack (alignment: .leading,  spacing:20) {
            Text("VStack, First")
            Text("VStack, Second")
            
            Spacer()
        }
        
        HStack (spacing:20) {
            Text("HStack, First")
            Text("HStack, Second")
        }
    }
}

#Preview {
    Stacks()
}
