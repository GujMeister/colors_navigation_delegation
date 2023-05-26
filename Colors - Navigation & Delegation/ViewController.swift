//
//  ViewController.swift
//  Colors - Navigation & Delegation
//
//  Created by Luka Gujejiani on 26.05.23.
//

import UIKit

class ViewController: UIViewController, PaletteDelegate {
    
    
    @IBOutlet weak var pushButton: UIButton!
    var backgroundColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func PalettePageBtn(_ sender: Any) {
        let paletteVC = storyboard?.instantiateViewController(withIdentifier: "paletteVC") as! paletteVC
        navigationController?.pushViewController(paletteVC, animated: true)
        
        paletteVC.backgroundColorClosure = { color in
            self.view.backgroundColor = color
        }
        
        paletteVC.delegate = self
    }
    
    func paletteVCDidChangeButtonColor(color: UIColor) {
        pushButton.tintColor = color
    }
}

protocol paletteDelegate: AnyObject {
    func paletteVCDidChangeButtonColor(color: UIColor)
}

