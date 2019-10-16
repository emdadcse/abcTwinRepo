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
