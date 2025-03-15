//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Arnav Kamboj on 13/03/25.
//

import SwiftUI

struct DetailView: View {
    let framework: Framework
    @Binding var isShowingDetialView : Bool
    @Binding var safariview : Bool
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetialView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                    
                    
                }
            }
                    .padding(.bottom,-100)
                    .padding(.trailing)
            Spacer()
            FrameworkTitleView(framework: framework)
            Text("\(framework.description)")
                .padding()
                .font(.body)
            Spacer()
            Button{
                safariview = true
            } label: {
                AFButton()
            }
            .padding(.bottom,20)
            .fullScreenCover(isPresented: $safariview) {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            }
            
        }
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework,isShowingDetialView: .constant(false),safariview: .constant(false))
}
