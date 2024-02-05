//https://www.youtube.com/watch?v=3cBi30ufsC4

import SwiftUI

struct Alert: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show aler"){
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert){
            Button("Delete", role:.destructive){}
            Button("Cancel", role: .cancel){}
        } message: {
            Text("Please read this")
        }
    }
}

#Preview {
    Alert()
}
