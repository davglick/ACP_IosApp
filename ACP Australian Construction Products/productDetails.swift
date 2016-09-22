//
//  productDetails.swift
//  ACP Australian Construction Products
//
//  Created by Davin Glick on 20/09/2016.
//  Copyright © 2016 Davin Glick. All rights reserved.
//

import UIKit

class productDetails: UIViewController {
    
    var steps: [Steps] = [Steps]()

    var selectedVideo: Steps?
 
   // @IBOutlet var image: UIImageView!
    
    var images = UIImage()
    
    @IBOutlet var productName: UILabel!
  
    @IBOutlet var productVideo: UIWebView!
  
    @IBOutlet var productDescription: UITextView!
    
    var name: String = "doing"
    
    let youtubeURL = "https://www.youtube.com/embed/BfML5HO4opg"
    
    let youtubeID: String = "BfML5HO4opg"

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let logo = UIImage(named: "ACPLogo")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView

        //self.image.image = self.images
        //self.productName.text = self.name
      
    }
        
    /*
    
    override func viewWillAppear(_ animated: Bool) {
        
        let width = self.view.frame.size.width
        let height = width/320 * 180
        
        let videoEmbededString = "<html><head><style type=\"text/css\">body {background-color: transparent;color: white;}</style></head><body style=\"margin:0\"><iframe frameBorder=\"0\" height=\"" + String(describing: height) + "\" width=\"" + String(describing: width) + "\" src=\"http://www.youtube.com/embed/BfML5HO4opg\"?showinfo=0&modestbranding=1&frameborder=0&rel=0\"></iframe></body></html>"
        
        
        self.productVideo.loadHTMLString(videoEmbededString, baseURL: nil)
  
    
    }


*/

    override func viewDidAppear(_ animated: Bool) {
        
        if let vid = self.selectedVideo {
            
            
    // Video Description
            
        self.productName.text = vid.stepTitle
        self.productDescription.text = vid.stepDescription
            
            
    // Video URL content
            
    let width = self.view.frame.size.width
    let height = width/320 * 180
            
    let videoEmbededString = "<html><head><style type=\"text/css\">body {background-color: transparent;color: black;}</style></head><body style=\"margin:0\"><iframe frameBorder=\"0\" height=\"" + String(describing: height) + "\" width=\"" + String(describing: width) + "\" src=\"http://www.youtube.com/embed/" + vid.stepId + "?showinfo=0&modestbranding=1&frameborder=0&rel=0\"></iframe></body></html>"
           
         self.productVideo.loadHTMLString(videoEmbededString, baseURL: nil)
            
        }
        
        
    }
    
    
    @IBAction func showPopUp(_ sender: AnyObject) {
        
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopUpView
        
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        
    }
    


    
    //override func didReceiveMemoryWarning() {
        //super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}


}
