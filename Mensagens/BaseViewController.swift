//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Márcio Abrantes on 02/09/2021.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    
    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changeColor(_ sender: UIButton) {
        if let reference = self as? ColorPickerDelegate {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            colorPicker.modalPresentationStyle = .overCurrentContext
            colorPicker.delegate = reference
            present(colorPicker, animated: true, completion: nil)
        }

    }
}
