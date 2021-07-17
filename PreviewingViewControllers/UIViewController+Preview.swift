//
//  UIViewController+Preview.swift
//  PreviewingViewControllers
//
//  Created by Zafar on 15/07/21.
//

import SwiftUI

@available(iOS 13.0, *)
extension UIViewController {
    
    private struct Preview: UIViewControllerRepresentable {
        
        let viewController: UIViewController
        
        func makeUIViewController(context: Context) -> UIViewController {
            viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
    }
    
    public var preview: some View {
        return Preview(viewController: self)
    }
}
