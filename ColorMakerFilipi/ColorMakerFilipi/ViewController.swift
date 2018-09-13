//
//  ViewController.swift
//  ColorMakerFilipi
//
//  Created by Filipi Brentegani on 12/09/2018.
//  Copyright © 2018 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var viewColor: UIView!
    
    // MARK: Lifecycle Methods
    
    override func viewWillAppear(_ animated: Bool) {
        colorChange(true)
    }

    // MARK: Actions
    
    @IBAction func colorChange(_ sender: Any) {
        
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        viewColor.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}

