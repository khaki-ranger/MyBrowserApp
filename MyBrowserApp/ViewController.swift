//
//  ViewController.swift
//  MyBrowserApp
//
//  Created by 寺島 洋平 on 2019/01/18.
//  Copyright © 2019年 YoheiTerashima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var browserWebView: UIWebView!
    
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var forwardButton: UIBarButtonItem!
    @IBOutlet weak var reloadButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://dotinstall.com"
        self.loadUrl(urlString: urlString)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func getValidateUrl(urlString: String) -> URL? {
        if URL(string: urlString) == nil {
            print("Invalid URL")
            return nil
        }
        return URL(string: urlString)
    }
    
    func loadUrl(urlString: String) {
        if let url = self.getValidateUrl(urlString: urlString) {
            let urlRequest = URLRequest(url: url)
            self.browserWebView.loadRequest(urlRequest)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goBack(_ sender: Any) {
    }
    
    @IBAction func goForward(_ sender: Any) {
    }
    
    @IBAction func reload(_ sender: Any) {
    }
}

