//
//  Alphabets_VC.swift
//  ABCTween
//
//  Created by emdad hossain on 16/10/19.
//  Copyright © 2019 AppsTween. All rights reserved.
//

import UIKit

class Alphabets_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnAbcCapital(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AbcCapital_VC") as! AbcCapital_VC
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func btnAbcSmall(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AbcSmall_VC") as! AbcSmall_VC
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func btnAbcWithPic(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ABCWithPicVC") as! ABCWithPicVC
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func btnAbcPuzzle(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AbcPuzzle_VC") as! AbcPuzzle_VC
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func closeBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
