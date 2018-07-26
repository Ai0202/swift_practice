//
//  ViewController.swift
//  quizuApp
//
//  Created by Atsushi on 2018/07/22.
//  Copyright © 2018年 Atsushi. All rights reserved.
//

//WebView
import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        
        let url = URL(string: "https://google.co.jp")
        let urlRequest = URLRequest(url: url!)
        webView.loadRequest(urlRequest)
        

    }

    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }


}

