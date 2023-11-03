//
//  ViewController.swift
//  prgressbar
//
//  Created by Admin on 11/09/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var par: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        var pro = progressBarView()
      
    
        par.frame = CGRect(x: 150, y: 300, width: 150, height: 150)
        par.addSubview(pro)
        pro.input = 34
              pro.animation(duration: 6)
              pro.createpath()
    }


}

