
//https://www.youtube.com/watch?v=62aW7VDW60w

// Color, Colors automatically take up all the space available, but you can also use the frame() modifier to ask for specific sizes. For example, we could ask for a 200x200 red square like this:
// Color.red
//    .frame(width: 200, height: 200)

// You can also specify minimum and maximum widths and heights, depending on the layout you want. For example, we could say we want a color that is no more than 200 points high, but for its width must be at least 200 points wide but can stretch to fill all the available width that’s not used by other stuff:

// Color.red
//    .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)

// For example, Color.primary is the default color of text in SwiftUI, and will be either black or white depending on whether the user’s device is running in light mode or dark mode. There’s also

// Color.secondary, which is also black or white depending on the device, but now has slight transparency so that a little of the color behind it shines through.

// Even when taking up the full screen, you’ll see that using Color.red will leave some space white.
// If you want your content to go under the safe area, you can use the .ignoresSafeArea() modifier to specify which screen edges you want to run up to, or specify nothing to automatically go edge to edge.

import SwiftUI

struct Colors: View {
    var body: some View {

        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }


            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
//        .background(.red)
        .ignoresSafeArea()
    }
}

#Preview {
    Colors()
}

//            Color.red
//                .frame(width: 200, height: 200)
//            Color.red
//                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
//            Color(red: 1, green: 0.8, blue: 0)
