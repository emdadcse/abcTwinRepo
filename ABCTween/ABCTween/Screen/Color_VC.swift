//
//  Color_VC.swift
//  ABCTween
//
//  Created by emdad hossain on 16/10/19.
//  Copyright © 2019 AppsTween. All rights reserved.
//

import UIKit

class Color_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view. here is line
    }
    @IBAction func closeBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnColorPronounce(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ColorPronounce_VC") as! ColorPronounce_VC
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func btnColorWithPic(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ColorWithPic_VC") as! ColorWithPic_VC
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func btnColorPuzzle(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ColorPuzzle_VC") as! ColorPuzzle_VC
        present(vc, animated: true, completion: nil)
    }

}
