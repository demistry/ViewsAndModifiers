//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by David Ilenwabor on 20/10/2019.
//  Copyright © 2019 Davidemi. All rights reserved.
//

import SwiftUI

struct LargeFontBlue : ViewModifier{
    func body(content : Content)-> some View{
        content.font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View{
    func applyLargeBlue() -> some View{
        self.modifier(LargeFontBlue())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello There").applyLargeBlue()
    }
           
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
