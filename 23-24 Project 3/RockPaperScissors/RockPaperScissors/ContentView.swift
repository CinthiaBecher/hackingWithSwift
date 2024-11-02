import SwiftUI

struct SelectedStyle: ViewModifier {
    var selected: String
    var actual: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
                .padding()
                .background(selected == actual ? Color.green : Color.yellow)
                .foregroundColor(.white)
        }
    }
}

extension View {
    func selected(with selected: String, actual: String) -> some View {
        modifier(SelectedStyle(selected: selected, actual: actual))
    }
}

struct ContentView: View {
    var options = ["👊🏻 Rock", "🤚🏻 Paper", "✌️ Scissors"]
    @State private var optionSelected = ""
    @State var win = true
    
    @State var score = 0
    
    var body: some View {
        Text("Score: \(score)" )
        Button("▶️ Play"){
            optionSelected = options[Int.random(in: 0..<3)]
            win.toggle()
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .cornerRadius(10)
        VStack{
            HStack {
                ForEach(options, id: \.self) { option in
                    Text(option)
                        .selected(with: optionSelected, actual: option)
                }
            }
            HStack{
                var winString = win ? "win" : "lose"
                Text("Win")
                    .selected(with: winString, actual: "win")
                Text("Lose")
                    .selected(with: winString, actual: "lose")
            }
            .padding()
        }
        .padding()
        
        HStack {
            ForEach(options, id: \.self) { option in
                Button(option){
                    if(optionSelected == options[0]){
                        if(win){
                            score = (option == options[1]) ? score+10 : score-10
                            
                        } else{
                            score = (option == options[0] || option == options[2]) ? score+10 : score-10
                            
                        }
                    } else if(optionSelected == options[1]){
                        if(win){
                            score = (option == options[2]) ? score+10 : score-10
                    
                        }else{
                            score = (option == options[0] || option == options[1]) ? score+10 : score-10
                           
                        }
                    }else if(optionSelected == options[2]){
                        if(win){
                            score = (option == options[0]) ? score+10 : score-10
                            
                        }else{
                            score = (option == options[2] || option == options[1]) ? score+10 : score-10
                        }
                    }
                    
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ContentView()
}
