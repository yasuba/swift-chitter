//
//  ViewController.swift
//  Chitter
//
//  Created by Driver, Maya (UK - London) on 11/07/2015.
//  Copyright (c) 2015 Maya. All rights reserved.
//

import UIKit
import Social

let defaultAvatarURL = NSURL(string: "https://abs.twimg.com/sticky/default_profile_images/" +
    "default_profile_6_200x200.png")

public class ViewController: UITableViewController {
    
    var parsedTweets : [ParsedTweet] = [ParsedTweet(tweetText: "iOS 8 SDK Development now in print. " + "Swift programming FTW!", userName: "@yasuba", createdAt: "2015-07-17 10:09:30", userAvatarURL: defaultAvatarURL), ParsedTweet(tweetText: "Hello", userName: "@yasuba", createdAt: "2015-07-17 10:09:30", userAvatarURL: defaultAvatarURL), ParsedTweet(tweetText: "Third tweet", userName: "@yasuba", createdAt: "2015-07-17 10:09:30", userAvatarURL: defaultAvatarURL)]
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        reloadTweets()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func loadTwitterPage() {


    }
    
    override public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
    }

    override public func tableView(_tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return parsedTweets.count
    }
    
    override public func tableView (_tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("CustomTweetCell") as ParsedTweetCell
            let parsedTweet = parsedTweets[indexPath.row]
            cell.userNameLabel.text = parsedTweet.userName
            cell.tweetTextLabel.text = parsedTweet.tweetText
            cell.createAtLabel.text = parsedTweet.createdAt
        if parsedTweet.userAvatarURL != nil {
            if let imageData = NSData (contentsOfURL: parsedTweet.userAvatarURL!) {
                cell.avatarImageView.image = UIImage(data: imageData)
            }
        }
            return cell
    }
    
    func reloadTweets() {
        tableView.reloadData()
    }
}

