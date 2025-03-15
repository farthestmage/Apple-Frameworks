//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Arnav Kamboj on 13/03/25.
//

import SwiftUI

struct AFButton: View {
    var body: some View {
        Text("Learn More ")
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280,height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)    }
}

#Preview (traits: .sizeThatFitsLayout) {
    AFButton()
        
}
