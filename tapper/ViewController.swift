//
//  ViewController.swift
//  tapper
//
//  Created by Andrew Ingram on 2016-02-03.
//  Copyright © 2016 Sabring. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tapsRequired:Int = 0
    var currentTaps:Int = 0

    @IBOutlet weak var tapsTextEdit: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var tapper: UIImageView!
    @IBOutlet weak var tapsLabel: UILabel!
    @IBOutlet weak var tapBtn: UIButton!
    

    @IBAction func playBtn(sender: AnyObject) {
        if tapsTextEdit.text != nil && tapsTextEdit != "" {
        tapsRequired = Int(tapsTextEdit.text!)!
        playBtn.enabled=false
        playBtn.hidden=true
        tapper.hidden=true
        tapsTextEdit.hidden=true
        tapBtn.hidden=false
        tapsLabel.hidden=false
        
        }else{
            tapsTextEdit.text="Please enter a value"
        }
        
    }
    
    @IBAction func tapBtn(sender: AnyObject) {
        currentTaps++
        checkGameStatus()
        updateLabel()
        
        
    }
    
    func checkGameStatus(){
        if currentTaps==tapsRequired {
            tapsLabel.text="You Won!"
            tapBtn.enabled=false
            
        }
    }
    
    func updateLabel(){
        tapsLabel.text="\(currentTaps) Taps"

    }
}
    



