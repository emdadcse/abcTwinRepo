//
//  Number_VC.swift
//  ABCTween
//
//  Created by emdad hossain on 16/10/19.
//  Copyright © 2019 AppsTween. All rights reserved.
//

import UIKit

class Number_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func btnNumberOnly(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NumberOnly_VC") as! NumberOnly_VC
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func btnNumberWithPic(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NumberWithPic_VC") as! NumberWithPic_VC
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func btnNumberPuzzle(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NumberPuzzle_VC") as! NumberPuzzle_VC
        present(vc, animated: true, completion: nil)
    }
}
