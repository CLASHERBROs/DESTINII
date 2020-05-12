//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var player : AVAudioPlayer!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
var storyBrain = StoryBrain()
   
    override func viewDidLoad() {
       playSound()
        super.viewDidLoad()
        storyLabel.text = storyBrain.stories[0].title
        choice1Button.setTitle(storyBrain.stories[0].choice1,for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2,for: .normal)

    }

    @IBAction func buttonPressed(_ sender: UIButton) {
       
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        UpdateUI()
        
    }
    func UpdateUI()
    {
        storyLabel.text = storyBrain.stories[storyBrain.storyline].title
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyline].choice1,for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyline].choice2,for: .normal)
        
    }

        func playSound() {
               let url = Bundle.main.url(forResource: "suspense", withExtension: "mp3")
               player = try! AVAudioPlayer(contentsOf: url!)
               player.play()
                       
           }

    
}

