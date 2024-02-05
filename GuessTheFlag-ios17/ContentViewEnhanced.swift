//https://www.youtube.com/watch?v=V17ySb6eF9U

//To fix this we’re going to do two things: add a little padding to our outermost VStack, then add some Spacer() views to force the UI elements apart. On larger devices these spacers will split up the available space between them, but on small devices they’ll practically disappear – it’s a great way to make our UI work well on all screen sizes.
//
//There are four spacers I’d like you to add:
//
//One directly before the “Guess the Flag” title.
//Two (yes, two) directly before the “Score: ???” text.
//And one directly after the “Score: ???” text.
//Remember, when you have multiple spacers like this they will automatically divide the available space equally – having two spacers together will make them take up twice as much space as a single spacer.

//The frame() modifier lets us specify a precise width and height for a view

import SwiftUI

struct ContentViewEnhanced: View {
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.5),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.5),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                
                
                VStack(spacing: 30){
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) {number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 30)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: ???")
                    .foregroundStyle(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/.weight(.bold))
                
                Spacer()
            }
            .padding(30)
        }
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is ???")
        }
    }
    
    func flagTapped(_ number: Int){
        if number == correctAnswer{
            scoreTitle = "Correct"
        } else{
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentViewEnhanced()
}

