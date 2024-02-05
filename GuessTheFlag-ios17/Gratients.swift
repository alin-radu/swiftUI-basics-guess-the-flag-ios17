
//https://www.youtube.com/watch?v=-PLvTfpbi0Y

//SwiftUI gives us four kinds of gradients to work with, and like colors most of them are also views that can be drawn in our UI.
//
//Gradients are made up of several components:
//
//An array of colors to show
//Size and direction information
//The type of gradient to use
//For example, a linear gradient goes in one direction, so we provide it with a start and end point like this:
//LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)

import SwiftUI

struct Gratients: View {
    var body: some View {
        LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
        
//        LinearGradient(stops: [
//            Gradient.Stop(color: .white, location: 0.45),
//            Gradient.Stop(color: .black, location: 0.55),
//        ], startPoint: .top, endPoint: .bottom)
        
        LinearGradient(stops: [
            .init(color: .white, location: 0.45),
            .init(color: .black, location: 0.55),
        ], startPoint: .top, endPoint: .bottom)
        
        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
        
        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
        
        Text("Your content")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundStyle(.white)
            .background(.red.gradient)
    }
}

#Preview {
    Gratients()
}
