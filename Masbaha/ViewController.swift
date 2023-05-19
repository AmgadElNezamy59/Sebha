//
//  ViewController.swift
//  Masbaha
//
//  Created by Amgad ElNezamy on 08/01/2023.
//

import UIKit

class ViewController: UIViewController {
    let defaults = UserDefaults.standard
    var numerOfzaker = 0
    

    @IBOutlet weak var numberOfZakerLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
         let zaker = defaults.integer(forKey: "zakerNumber")
            numerOfzaker = zaker
        
        updateUI()
        
    }

    @IBAction func fingerButtonPressed(_ sender: UIButton) {
        DispatchQueue.main.async {
            self.numerOfzaker+=1
            self.defaults.set(self.numerOfzaker, forKey: "zakerNumber")
            self.updateUI()
        }
        
    }
    
    @IBAction func restButtonPressed(_ sender: UIButton) {
        numerOfzaker = 0
        
        numberOfZakerLable.text = String(numerOfzaker)
    }
    
    func updateUI()  {
        numberOfZakerLable.text = String (numerOfzaker)    }
}

