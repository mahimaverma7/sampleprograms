//
//  ViewController.swift
//  csci253web
//
//  Created by Mahima  Verma on 12/2/15.
//  Copyright © 2015 Mahima  Verma. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox
import Swift

class ViewController: UIViewController {

    var uplimitfree = "65"
    var lowlimitfree = "60"
    
    var uplimit = "25"
    var lowlimit = "20"
    
    @IBOutlet weak var textfreespeed: UITextField!
    
    let beepSoundURL =  NSBundle.mainBundle().URLForResource("alarm", withExtension: "wav")!
    var beepPlayer = AVAudioPlayer()
    
    func playMySound(){
        beepPlayer = try! AVAudioPlayer(contentsOfURL: beepSoundURL)
        beepPlayer.prepareToPlay()
        beepPlayer.play()
        beepPlayer.numberOfLoops = -1
    }
    
   

        
    
    @IBAction func testfreespeed(sender: AnyObject){
    
        if (textfreespeed.text >= uplimitfree)
        {
            playMySound()
             AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
            }
    if (textfreespeed.text < uplimitfree && textfreespeed.text > lowlimitfree)
    {
    var exceedspeedlimit = UIAlertView()
        exceedspeedlimit.title = "Speeding"
        exceedspeedlimit.message = "You are Good!"
        exceedspeedlimit.addButtonWithTitle("Cancel")
        exceedspeedlimit.addButtonWithTitle("OK")
        exceedspeedlimit.show()
        
            }
    
            
            if (textfreespeed.text <= lowlimitfree)
        {
            var exceedspeedlimit = UIAlertView()
            exceedspeedlimit.title = "Speeding"
            exceedspeedlimit.message = "You are too slow! Please Match the traffic speed."
            exceedspeedlimit.addButtonWithTitle("Cancel")
            exceedspeedlimit.addButtonWithTitle("OK")
            exceedspeedlimit.show()
            
            
            
            }
    }

    
    @IBAction func resetfree(sender: AnyObject) {
        
        
             beepPlayer.stop()
    }
    
    
    @IBOutlet weak var textresspeed: UITextField!
    
    
    @IBAction func testresspeed(sender: AnyObject) {
        
        
        if (textresspeed.text > lowlimit && textresspeed.text < uplimit)
        {
            self.view.backgroundColor = UIColor.greenColor()
            var exceedspeedlimit = UIAlertView()
            exceedspeedlimit.title = "Speeding"
            exceedspeedlimit.message = "Maintain the Speed"
            exceedspeedlimit.addButtonWithTitle("Cancel")
            exceedspeedlimit.addButtonWithTitle("OK")
            exceedspeedlimit.show()
        }
        else if(textresspeed.text >= uplimit)
        {
            self.view.backgroundColor = UIColor.redColor()
            
            var exceedspeedlimit = UIAlertView()
            exceedspeedlimit.title = "Speeding"
            exceedspeedlimit.message = "Please Slow Down For You Are Exceeding Speed Limit."
            exceedspeedlimit.addButtonWithTitle("Cancel")
            exceedspeedlimit.addButtonWithTitle("OK")
            exceedspeedlimit.show()
        }
            
        else if(textresspeed.text <= lowlimit)
            
        {
            self.view.backgroundColor = UIColor.grayColor()
            var exceedspeedlimit = UIAlertView()
            exceedspeedlimit.title = "Speeding"
            exceedspeedlimit.message = "You are very slow! you may cause traffic"
            exceedspeedlimit.addButtonWithTitle("Cancel")
            exceedspeedlimit.addButtonWithTitle("OK")
            exceedspeedlimit.show()
        }
        
        
        
        
    }
    
    
    
    @IBAction func resetres(sender: AnyObject) {
        
        self.view.backgroundColor = UIColor.redColor()
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


