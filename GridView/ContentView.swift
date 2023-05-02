//
//  ContentView.swift
//  GridView
//
//  Created by Komal Gilani on 02/05/2023.
//

import SwiftUI

struct ContentView: View {
    private var data : [Int] =  Array(1...15)
    private var colors : [Color] = [.red ,.green ,.cyan ,.purple]
    
    private let adaptiveColumn = [
        GridItem(.adaptive(minimum: 150))  //it adapts to screen size and adjust columns according to screen width
        
    ]
    private let numberColumn = [
        GridItem(.flexible()), GridItem(.flexible())
    ]
    private let fixedColumn = [
    
        GridItem(.fixed(200)),
        GridItem(.fixed(200))
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: fixedColumn,spacing: 20){
                    
                    ForEach(data, id:\.self){ number in
                        ZStack{
                            Rectangle()
                                .frame(width: 150,height: 150)
                                .foregroundColor(colors[number%4])
                            Text("\(number)")
                                .font(.system(size: 80,weight: .medium,design: .rounded))
                                .foregroundColor(.white)
                        }
                        
                    } // end of For Each loop
                } //end of LazyVGrid
                
            }  //end of ScrollView
            .navigationTitle("Simple Grid View")
        } //end of Navigation View
        .padding()
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
