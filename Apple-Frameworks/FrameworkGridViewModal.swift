//
//  FrameworkGridViewModal.swift
//  Apple-Frameworks
//
//  Created by Arnav Kamboj on 13/03/25.
//

import SwiftUI


final class FrameworkGridViewModal: ObservableObject{
    
    var selectedframework: Framework?{
        didSet{
            isshowingdetailview = true
        }
        
    }
    
    
    @Published var isshowingdetailview: Bool = false
    
}
