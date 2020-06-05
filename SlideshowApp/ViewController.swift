//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 須田　知弘 on 2020/05/27.
//  Copyright © 2020 tomohiro.suda. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var susumu: UIButton!
    @IBOutlet weak var modoru: UIButton!
    @IBOutlet weak var saisei: UIButton!
    

//class UIImage : NSObject
    @IBOutlet weak var timerLabel: UILabel!
        // タイマー
    var timer: Timer!
    var img: [UIImage] = []
    var imageView01: [UIImageView?] = []
 //    @IBOutlet weak var scrView: UIScrollView!
    
    // タイマー用の時間のための変数
    var timer_sec: Int = 0
    
     @IBOutlet weak var imageView: UIImageView!
        var img01 = UIImage(named: "IMG_2006.jpg")
        var img02 = UIImage(named: "IMG_2007.jpg")
        var img03 = UIImage(named: "IMG_2008.jpg")
       var mai = 0
    var sai = 0
    var imgArray: [String] = ["IMG_2006.jpg","IMG_2007.jpg","IMG_2008.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        img = [UIImage(named: "IMG_2006.jpg")!,
               UIImage(named: "IMG_2007.jpg")!,
               UIImage(named: "IMG_2008.jpg")!]

        imageView01 = [UIImageView(image:img[0]),
                       UIImageView(image: img[1]),
                       UIImageView(image: img[2])]
        
 
       imageView.image = img[mai]

        }

    @objc func updateTimer(_ timer: Timer) {
          
        if (sai % 2 == 0) {
        imageView.image = img[mai]
            susumu.isEnabled = true
            modoru.isEnabled = true
            saisei.setTitle("再生", for:.normal )
        }else{
            mai=(self.timer_sec / 20 ) % 3
            imageView.image = img[mai]
            susumu.isEnabled = false
            modoru.isEnabled = false
            saisei.setTitle("停止", for:.normal )
        }
            self.timer_sec += 1
        if (self.timer_sec == 60 ){
            self.timer_sec = 0
            }
    }

    @IBAction func startTimer(_ sender: Any) {
        sai = 0
        if mai < 2 {
                  mai = mai+1
          }else{
              mai = 0
          }
    
         imageView.image = img[mai]

    }
    
    @IBAction func pauseTimer(_ sender: Any) {
    sai = 0
        if mai > 0 {
                mai = mai-1
        }else{
            mai = 2
        }
            imageView.image = img[mai]
       
    }
        
    @IBAction func resetTimer(_ sender: Any) {
      sai += 1
            if mai < 2 {
                             mai = mai + 1
                     }else{
                         mai = 0
                     }
            //self.timerLabel.text = mai
            //print(mai)
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        }
    }
    
        override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
            
    }
        
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        sai = 0
        imageView.image = img[mai]
        print(imgArray[mai])
        let ZoomViewController:ZoomViewController = segue.destination as! ZoomViewController
        ZoomViewController.imgTo = imgArray[mai]

        }
          
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
}

