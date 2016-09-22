//
//  CustomSegue.swift
//  ACP Australian Construction Products
//
//  Created by Davin Glick on 21/09/2016.
//  Copyright © 2016 Davin Glick. All rights reserved.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    
    override func perform()
        
        
    {
        let sourceVC = self.source
        let destinationVC = self.destination
        
        sourceVC.view.addSubview(destinationVC.view)
        
        destinationVC.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseInOut, animations: { () -> Void in
            
            destinationVC.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            
        }) { (finished) -> Void in
            
            destinationVC.view.removeFromSuperview()
            
            //let time = DispatchTime.now(dispatch_time_t, Int64(0.001 * Double(NSEC_PER_SEC)))
            
           // dispatch_after(time, dispatch_get_main_queue()) {
                
                sourceVC.present(destinationVC, animated: false, completion: nil)
                
}

}

}



