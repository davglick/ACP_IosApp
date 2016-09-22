//
//  ViewController.swift
//  ACP Australian Construction Products
//
//  Created by Davin Glick on 20/09/2016.
//  Copyright © 2016 Davin Glick. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var CollectionView: UICollectionView!
    var step: [Steps] = [Steps]()
    var selectedVideo: Steps?
   
    
    let images = [UIImage(named: "Absorb350"),UIImage(named:"TAU_ii_cz_2 copy"),UIImage(named:"X-TENSION Median copy-1"), UIImage(named: "X-TENSION Standard copy")]
    let productNames = ["Tau-II Crash Cushion", "Absorb 350 Crash Cushion", "X-Tension Guardrail End Terminal", "X-Tension Median Terminal"]
    let stepCount = ["12 Steps", "5 Steps", "14 Steps", "20 Steps"]
    let videoID = ["https://www.youtube.com/embed/BfML5HO4opg","BfML5HO4opg","BfML5HO4opg"]
    let productID = [0,1,2,3,4]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let logo = UIImage(named: "ACPLogo")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        

        
        let model = stepModel()
        self.step = model.getSteps()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return step.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ProductCell
        
        
            cell.productImage?.image = self.images[indexPath.row]
            
            cell.productTitle?.text = self.productNames[indexPath.row]
            
            cell.stepCount?.text = self.stepCount[indexPath.row]
            
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    self.selectedVideo = self.step[indexPath.row]
        
    self.performSegue(withIdentifier: "productDetails", sender: self)

  
    }
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if segue.identifier == "productDetails" {
            
            let indexPaths = self.CollectionView!.indexPathsForSelectedItems!
            let indextPath = indexPaths[0] as NSIndexPath
            
            let vc = segue.destination as! productDetails
            
            vc.images = self.images[indextPath.row]!
            vc.name = self.productNames[indextPath.row]
           
            vc.selectedVideo = self.selectedVideo
        
            
       }


     }

}
