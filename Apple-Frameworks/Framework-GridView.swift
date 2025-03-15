//
//  Framework-GridView.swift
//  Apple-Frameworks
//
//  Created by Arnav Kamboj on 13/03/25.
//

import SwiftUI

struct Framework_GridView: View {
    
    @StateObject var viewmodel = FrameworkGridViewModal()
    
    @State private var safariview = false
    
    let column: [GridItem]=[GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible())
                           ]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: column){
                    ForEach (MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewmodel.selectedframework = framework
                            }
                    }
                    
                }
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewmodel.isshowingdetailview){
                DetailView(framework: viewmodel.selectedframework ?? MockData.sampleFramework, isShowingDetialView: $viewmodel.isshowingdetailview, safariview: $safariview)
                
            }
        }
        
    }
}

#Preview {
    Framework_GridView()
        .preferredColorScheme(.dark)
}
