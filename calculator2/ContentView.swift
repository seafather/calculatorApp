//
//  ContentView.swift
//  calculator2
//
//  Created by Mike Ho on 18/1/2024.
//

import SwiftUI

enum calculatorButton:String{
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    
    case add = "+"
    case subtract = "-"
    case multiple = "x"
    case divide = "÷"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
    
    
}



struct ContentView: View {
    
    let btns: [[calculatorButton]] = [
        [.clear,.negative,.percent,.divide ],
        [.seven,.eight,.nine,.multiple],
        [.four,.five,.six,.subtract],
        [.one,.two,.three,.add],
        [.zero,.percent,.equal],
        
    ]
    var body: some View {
         ZStack {
             Color.black
                 .foregroundColor(.black)
             
             VStack{
                 
                 
                 //for display the number
                 HStack{
                     Spacer()
                     Text("2136")
                         .foregroundStyle(Color.white)
                         .font(.system(size: 90))
                         .bold()
                     
                 }
                 
                 HStack{
                     ForEach(btns,id: \.self){ row in
                         ForEach(row,id:\.self){
                            item in
                           
                             Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                 Text(item.rawValue)
                             })
                             .frame(
                                width:)
                                 
                         }
                        
                     }
                 }
             }
             
             
             
        }
        .ignoresSafeArea()
        
    }
    func buttonWidth(item:Button) {
        return UIScreen.main.bounds.width /12 * 4 
    }
}


#Preview {
    ContentView()
}
