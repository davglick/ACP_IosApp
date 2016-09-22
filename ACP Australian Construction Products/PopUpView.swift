//
//  PopUpView.swift
//  ACP Australian Construction Products
//
//  Created by Davin Glick on 21/09/2016.
//  Copyright © 2016 Davin Glick. All rights reserved.
//

import UIKit

class PopUpView: UIViewController {

    @IBOutlet var stepCount: UIView!
    
    @IBOutlet var closeButton: UIButton!
    
    @IBOutlet var stepTable: UITableView!
    
    var steps: [Steps] = [Steps]()
    
    var selectedVideo: Steps?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //self.showAnimate()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.gray.withAlphaComponent(0.7)
        
        stepCount.layer.cornerRadius = 5
        closeButton.layer.cornerRadius = 1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func close(_ sender: AnyObject) {
        
        
        self.view.removeFromSuperview()
        
    }
    
    
    

    
   }


