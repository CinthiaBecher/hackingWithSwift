import SwiftUI

struct SelectedStyle: ViewModifier {
    var selected: String
    var actual: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
                .padding(10)
                .clipShape(Circle())
                .overlay(
                Circle()
                    .stroke(selected == actual ? Color.green : Color.yellow, lineWidth: 4)
                    .frame(width: 90, height: 90))
                
                
                
        }
    }
}

extension View {
    func selected(with selected: String, actual: String) -> some View {
        modifier(SelectedStyle(selected: selected, actual: actual))
    }
}

struct ContentView: View {
    var options = ["rock", "paper", "scissor"]
    @State private var optionSelected = ""
    @State var win = true
    
    @State var score = 0
    
    var body: some View {
        VStack{
            Text("Score: \(score)")
                .frame(width: 100000, height: 50)
                .background(.gray)
                .foregroundColor(.white)
            Spacer()
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
                        Image(option)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .selected(with: optionSelected, actual: option)
                        
                        
                        
                    }
                }
                HStack{
                    let winString = win ? "win" : "lose"
                    Image("win")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .selected(with: winString, actual: "win")
                    Image("lose")
                        .resizable()
                        .frame(width: 80, height: 80)
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
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
