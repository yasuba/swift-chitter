//
//  ViewController.swift
//  Chitter
//
//  Created by Driver, Maya (UK - London) on 11/07/2015.
//  Copyright (c) 2015 Maya. All rights reserved.
//

import UIKit
import Social

public class ViewController: UIViewController {

    @IBOutlet public weak var twitterWebView: UIWebView!
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        loadTwitterPage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleShowMyTweetsTapped(sender: UIButton) {
        loadTwitterPage()
    }
    
    func loadTwitterPage() {
        twitterWebView.loadRequest(NSURLRequest (URL: NSURL (string: "http://www.twitter.com/yasuba")!))

    }

    @IBAction func handleTweetButtonTapped(sender: UIButton) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
            let tweetVC = SLComposeViewController (forServiceType: SLServiceTypeTwitter)
            tweetVC.setInitialText("I just finished the first project in iOS 8 SDK Development. #pragsios8")
            presentViewController(tweetVC, animated: true, completion: nil)
        } else {
            println("Can't send tweet")
        }
    }
}

