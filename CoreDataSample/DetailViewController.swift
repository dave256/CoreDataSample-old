//
//  DetailViewController.swift
//  CoreDataSample
//
//  Created by David Reed on 12/28/14.
//  Copyright (c) 2014 David Reed. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Event = self.detailItem as? Event {
            if let label = self.detailDescriptionLabel {
                //label.text = detail.valueForKey("timeStamp")!.description
                label.text = detail.formattedTimeStamp
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

