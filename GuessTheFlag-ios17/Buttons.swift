//https://www.youtube.com/watch?v=X15OcBObO_Y

//SwiftUI has a dedicated Image type for handling pictures in your apps, and there are three main ways you will create them:
//Image("pencil") will load an image called “Pencil” that you have added to your project.
//Image(decorative: "pencil") will load the same image, but won’t read it out for users who have enabled the screen reader. This is useful for images that don’t convey additional important information.
//Image(systemName: "pencil") will load the pencil icon that is built into iOS. This uses Apple’s SF Symbols icon collection, and you can search for icons you like – download Apple’s free SF Symbols app from the web to see the full set.
//By default the screen reader will read your image name if it is enabled, so make sure you give your images clear names if you want to avoid confusing the user. Or, if they don’t actually add information that isn’t already elsewhere on the screen, use the Image(decorative:) initializer.
                                        
import SwiftUI

struct Buttons: View {
    var body: some View {
//        Button("Delete selection", action: executeDelete)
//
//        func executeDelete() {
//            print("Now deleting…")
//        }
        
        VStack{
            Button("Delete selection", role: .destructive) {
                print("Now deleting…")
            }
            
            Button("Button 1") { }
                .buttonStyle(.bordered)
            
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
            
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            
            Button {
                print("Button was tapped")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
            
            Button {
                print("Edit button was tapped")
            } label: {
                Image(systemName: "pencil")
            }
            .buttonStyle(.bordered)
            
//            image and label for a button
            Button("Edit", systemImage: "pencil") {
                print("Edit button was tapped")
            }
            .buttonStyle(.bordered)
            
//            image and label for a button
            Button {
                print("Edit button was tapped")
            } label: {
//                HStack{
//                    Image(systemName: "pencil")
//                    Text("Edit")
//                }
                Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            
        }
    }
}

#Preview {
    Buttons()
}
