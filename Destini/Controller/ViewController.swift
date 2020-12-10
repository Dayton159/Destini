//
//  ViewController.swift
//  Destini
//
//  Created by Dayton on 11/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        
    }
    @IBAction func choiceBtnPressed(_ sender: UIButton) {
        
        let choice = sender.currentTitle!
         storyBrain.checkChoice(choice)
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI(){
        storyLabel.text = storyBrain.getNextStory()
        choice1Button.setTitle(storyBrain.getNextChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getNextChoice2(), for: .normal)
    }

}

