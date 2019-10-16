//
//  Home_VC.swift
//  ABCTween
//
//  Created by emdad hossain on 17/10/19.
//  Copyright © 2019 AppsTween. All rights reserved.
//

import UIKit

class Home_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_alphabetsPressed(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Alphabets_VC") as! Alphabets_VC
        present(vc, animated: true, completion: nil)
        
    }

    @IBAction func btn_numbersPressed(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Number_VC") as! Number_VC
        present(vc, animated: true, completion: nil)
        
    }
    @IBAction func btn_colorsPressed(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Color_VC") as! Color_VC
        present(vc, animated: true, completion: nil)
        
    }
}
