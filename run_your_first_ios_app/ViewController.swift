//
//  ViewController.swift
//  Tapper
//
//  Created by Joseph G. Greene on 5/25/16.
//  Copyright © 2016 Joseph G. Greene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tapsRequested:Int? = 0
    var tapsDone:Int = 0
    
    @IBOutlet weak var btnCoin: UIButton!
    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var tfTaps: UITextField!
    @IBOutlet weak var lblTaps: UILabel!
    @IBOutlet weak var imgTapper: UIImageView!

    @IBAction func clickPlayBtn(sender: AnyObject) {
        if self.tfTaps != nil && self.tfTaps.text != "" {
            self.tapsRequested = Int(self.tfTaps.text!)
            
            if self.tapsRequested != nil {
                self.imgTapper.hidden = true
                self.tfTaps.hidden = true
                self.btnPlay.hidden = true
                
                self.btnCoin.hidden = false
                self.lblTaps.hidden = false
            }
        }
    }
    
    @IBAction func clickCoinBtn(sender: AnyObject) {
        self.tapsDone += 1
        
        self.updateTapsLabel()
        
        if self.tapsDone > self.tapsRequested {
            // -- reset the game
            self.resetGame()
        }
    }
    
    func updateTapsLabel() {
          self.lblTaps.text = String(tapsDone) + " Taps !"
    }
    
    func resetGame() {
        // -- Set Initial Values & Attributes
        self.tapsDone = 0
        self.tapsRequested = 0
        
        self.tfTaps.text = ""
        self.updateTapsLabel()
        
        self.imgTapper.hidden = false
        self.tfTaps.hidden = false
        self.btnPlay.hidden = false
        
        self.btnCoin.hidden = true
        self.lblTaps.hidden = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.resetGame()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

