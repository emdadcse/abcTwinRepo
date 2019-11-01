//
//  AbcSmall_VC.swift
//  ABCTween
//
//  Created by emdad hossain on 17/10/19.
//  Copyright © 2019 AppsTween. All rights reserved.
//

import UIKit
import AVFoundation

class AbcSmall_VC: UIViewController, AVAudioPlayerDelegate {
    
    
    @IBOutlet var alp_a: CustomButton!
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["al_01", "al_02", "al_03", "al_02", "al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03","al_03"]
    var selectedSoundFileName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func alphabetBtn(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag - 1]
        playSound()
        
        //sender.alpha = 0
       /* sender.transform = CGAffineTransform(rotationAngle: 180)
        
        UIView.animate(withDuration: 0.5, animations: {
            
            //sender.alpha = 1
            sender.transform = CGAffineTransform(rotationAngle: 0)
            
        })
 */
        
        UIView.animate(withDuration: 1) {
            let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
            rotation.toValue = NSNumber(value: Double.pi * 2)
            rotation.duration = 0.3
            rotation.isCumulative = true
            rotation.repeatCount = 3
            //rotation.repeatCount = Float.greatestFiniteMagnitude
            sender.layer.add(rotation, forKey: "rotationAnimation")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func closeBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    func playSound() {
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "mp3")
        
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        
        audioPlayer.play()
    }
    
}
