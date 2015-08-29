//
//  ViewController.swift
//  Sample
//
//  Created by Kazunobu Tasaka on 6/22/15.
//  Copyright (c) 2015 Kazunobu Tasaka. All rights reserved.
//

import UIKit
import Kamagari

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
// MARK: - UITableViewDelegate
extension ViewController {
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        if indexPath.row == 0 {
            AlertBuilder(title: "Question", message: "Are you sure where Kamagari is?", preferredStyle: .Alert)
                .addAction(title: "NO", style: .Cancel) { _ in }
                .addAction(title: "YES", style: .Default) { _ in }
                .build()
                .kam_show(animated: true)
        } else {
            if UIDevice.currentDevice().userInterfaceIdiom != .Pad {
                // Sample to show on iPad
                AlertBuilder(title: "Question", message: "Are you sure where Kamagari is?", preferredStyle: .ActionSheet)
                    .addAction(title: "NO", style: .Cancel) { _ in }
                    .addAction(title: "YES", style: .Default) { _ in }
                    .build()
                    .kam_show(animated: true)
            } else {
                // Sample to show on iPad
                AlertBuilder(title: "Question", message: "Are you sure where Kamagari is?", preferredStyle: .ActionSheet)
                    .addAction(title: "YES", style: .Default) { _ in }
                    .addAction(title: "Not Sure", style: .Default) { _ in }
                    .setPopoverPresentationProperties(sourceView: view, sourceRect: CGRectMake(0, 0, 100, 100), barButtonItem: nil, permittedArrowDirections: .Any)
                    .build()
                    .kam_show(animated: true)
            }
        }
    }
}

