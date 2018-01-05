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

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.row == 0 {
            AlertBuilder(title: "Question", message: "Are you sure where Kamagari is?", preferredStyle: .alert)
                .addAction(title: "NO", style: .cancel) { _ in }
                .addAction(title: "YES", style: .default) { _ in }
                .build()
                .kam_show(animated: true)
        } else {
            if UIDevice.current.userInterfaceIdiom != .pad {
                // Sample to show on iPad
                AlertBuilder(title: "Question", message: "Are you sure where Kamagari is?", preferredStyle: .actionSheet)
                    .addAction(title: "NO", style: .cancel) { _ in }
                    .addAction(title: "YES", style: .default) { _ in }
                    .build()
                    .kam_show(animated: true)
            } else {
                // Sample to show on iPad
                AlertBuilder(title: "Question", message: "Are you sure where Kamagari is?", preferredStyle: .actionSheet)
                    .addAction(title: "YES", style: .default) { _ in }
                    .addAction(title: "Not Sure", style: .default) { _ in }
                    .setPopoverPresentationProperties(sourceView: view, sourceRect: CGRect(x: 0, y: 0, width: 100, height: 100), barButtonItem: nil, permittedArrowDirections: .any)
                    .build()
                    .kam_show(animated: true)
            }
        }
    }
}

