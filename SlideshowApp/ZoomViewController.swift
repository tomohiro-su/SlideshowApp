//
//  ZoomViewController.swift
//  SlideshowApp
//
//  Created by 須田　知弘 on 2020/05/30.
//  Copyright © 2020 tomohiro.suda. All rights reserved.
//

import UIKit

class ZoomViewController: UIViewController {
     
    @IBOutlet weak var imageView: UIImageView!
    //   var imageView: UIImage!
    var imgTo:String = ""
    
   // var imageView:UIImageView!
    var scale:CGFloat = 1.0
    var width:CGFloat = 0
    var height:CGFloat = 0
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
    
    //*********************************
    override func viewDidLoad() {
        super.viewDidLoad()


    imageView.image = UIImage(named: imgTo)
      
   }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
