//
//  DetailViewController.swift
//  blogreader
//
//  Created by mostafa on 11/27/18.
//  Copyright © 2018 mostafa. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var webview: UIWebView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            self.title = detailItem?.value(forKey: "title") as? String
            if let blogview = self.webview {
                webview.loadHTMLString((detail.value(forKey:"content") as? String)!, baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

