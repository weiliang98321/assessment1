//
//  UIWebViewController.swift
//  Week1Assessment-(Wei Liang)
//
//  Created by Tan Wei Liang on 11/08/2017.
//  Copyright © 2017 TWL. All rights reserved.
//

import UIKit

class UIWebViewController: UIViewController , UIWebViewDelegate{
    
    @IBOutlet weak var webView: UIWebView!
    
   
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       webView.delegate = self
        
        
        loadUrl(with:"https://www.google.com")
    }

    
    func loadUrl(with string : String){
        
        
        
        
        
        guard let url = URL(string: string)
        
            else {
                
                print("Invalid URLString : \(string)")
                
                return
        }
        
        let request = URLRequest(url: url)
        
        webView.loadRequest(request)
        
    }
    
    
}
