//
//  ABCWithPicVC.swift
//  ABCTween
//
//  Created by Emdad Hossain on 2/20/19.
//  Copyright © 2019 AppsTween. All rights reserved.
//

import UIKit
import AVFoundation

class ABCWithPicVC: UIViewController, AVAudioPlayerDelegate {

    @IBOutlet weak var alphabet_imaveView: UIImageView!
    @IBOutlet weak var alphabetPicture_imageView: UIImageView!
    
    //var audioPlayer: AVAudioPlayer?
    var soundMuted:Bool = false
    
    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    var i = 0 {
        didSet {
            alphabetUpdate()
            alphabetPictureUpdate()
            //playAlphabetWithPictureSound()
        }
    }
    
    let allAlphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    let allAlphabetWithPiture = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    let allAlphabetSounds = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    @IBAction func closeBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func backBtnPressed(_ sender: UIButton) {
        if i < allAlphabet.count - 1 && i > 0 {
            i -= 1
        }
    }
    
    @IBAction func forwardBtnPressed(_ sender: UIButton) {
        if i < allAlphabet.count - 1 {
            i += 1
        }
    }
    
    // update the alphabet list
    func alphabetUpdate() {
        let imageName = "single-alph-" + allAlphabet[i]
        alphabet_imaveView.image = UIImage(named: imageName)
    }
    
    // update the alphabet refered picture object
    func alphabetPictureUpdate() {
        
        let picX = alphabetPicture_imageView.frame.origin.x
        let picY = alphabetPicture_imageView.frame.origin.y
        let picWidth = alphabetPicture_imageView.frame.width
        let picHeight = alphabetPicture_imageView.frame.height
        
        alphabetPicture_imageView.frame = CGRect(x: picX, y: picY, width: 0, height: 0)
        let imageName = "single-word-" + allAlphabet[i]
        alphabetPicture_imageView.image = UIImage(named: imageName)
        
        UIView.animate(withDuration: 1) {
            self.alphabetPicture_imageView.frame = CGRect(x: picX, y: picY, width: picWidth, height: picHeight)
        }
    }
    
    func playAlphabetWithPictureSound() {
        
         selectedSoundFileName = allAlphabetSounds[i]
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "mp3")
        
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        
        audioPlayer.play()
    }
    
    

}
