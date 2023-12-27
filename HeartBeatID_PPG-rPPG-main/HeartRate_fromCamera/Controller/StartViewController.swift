//
//  StartViewController.swift
//  HeartRate_fromCamera
//
//  Created by Derrick Hodge on 12/26/2023.
//
import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var nsignioLabel: UILabel!
    @IBOutlet weak var heartbeatLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nsignioLabel?.text = ""
        heartbeatLabel?.text = ""
        var nsignioIndex = 0.0
        var heartbeatIndex = 0.0
        let heartbeatText = "HeartBeatID"
        let nsignioText = "nsignio"
        for letter in nsignioText {
            Timer.scheduledTimer(withTimeInterval: 0.4 * nsignioIndex, repeats: false) { (timer) in
                self.nsignioLabel.text?.append(letter)
            }
            nsignioIndex += 1
        }
       Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { (timer) in
            for letter in heartbeatText {
                Timer.scheduledTimer(withTimeInterval: 0.2 * heartbeatIndex, repeats: false) { (timer) in
                    self.heartbeatLabel.text?.append(letter)
                }
                heartbeatIndex += 1
            }
        
        }
        Timer.scheduledTimer(withTimeInterval: 5.5, repeats: false) { (timer) in
            self.performSegue(withIdentifier: "startIdentifier", sender: self)
        }
    }
   
}
