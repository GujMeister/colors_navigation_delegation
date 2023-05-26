//
//  paletteVC.swift
//  Colors - Navigation & Delegation
//
//  Created by Luka Gujejiani on 29.05.23.
//

import UIKit

class paletteVC: UIViewController {
    
    @IBOutlet weak var redBackground: UIButton!
    @IBOutlet weak var yellowBackground: UIButton!
    @IBOutlet weak var greenBackground: UIButton!
    @IBOutlet weak var cyanBackground: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var cyanButton: UIButton!
    var backgroundColorClosure: ((UIColor) -> Void)?
    weak var delegate: PaletteDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backgroundRed(_ sender: Any) {
        backgroundColorClosure?(.red)
    }
    @IBAction func backgroundYellow(_ sender: Any) {
        backgroundColorClosure?(.yellow)
    }
    @IBAction func backgroundGreem(_ sender: Any) {
        backgroundColorClosure?(.green)
    }
    @IBAction func backgroundCyan(_ sender: Any) {
        backgroundColorClosure?(.cyan)
    }
    @IBAction func buttonRed(_ sender: Any) {
        delegate?.paletteVCDidChangeButtonColor(color: .red)
    }
    @IBAction func buttonYellow(_ sender: Any) {
        delegate?.paletteVCDidChangeButtonColor(color: .yellow)
    }
    @IBAction func buttonGreen(_ sender: Any) {
        delegate?.paletteVCDidChangeButtonColor(color: .green)
    }
    @IBAction func buttonCyan(_ sender: Any) {
        delegate?.paletteVCDidChangeButtonColor(color: .cyan)
    }
    
}

protocol PaletteDelegate: AnyObject {
    func paletteVCDidChangeButtonColor(color: UIColor)
}
