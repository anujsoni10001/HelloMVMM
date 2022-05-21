//
//  ContentView.swift
//  HelloMVMM
//
//  Created by Anuj Soni on 21/05/22.
//

import SwiftUI

struct ContentView: View {
   
    @ObservedObject private var counterVM:CounterViewModel
    
    init(){
    counterVM = CounterViewModel()
    }

    var body: some View {
        VStack{
        Text( counterVM.premium ? "PREMIUM" : "")
        .foregroundColor(Color.green)
        .frame(width:200 , height: 100)
        .font(.largeTitle)
                
        Text("\(counterVM.value)")
        .font(.largeTitle)
        Button("Increment"){
        counterVM.increment()
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

