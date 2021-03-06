//
//  ViewController.swift
//  Sound
//
//  Created by 保坂篤志 on 2022/05/06.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton() {
        
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
    }

    @IBAction func touchUpDrumButton() {
        
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }

}

