//
//  ViewController.swift
//  kadai7
//
//  Created by 八木佑樹 on 2024/05/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numField1: UITextField!
    @IBOutlet weak var numField2: UITextField!
    
    @IBOutlet weak var addResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addResult.text = ""
        // テキストフィールドのキーボードタイプを数字専用に設定
        numField1.keyboardType = .numberPad
        numField2.keyboardType = .numberPad
    }
    
    @IBAction func addClculate(_ sender: Any) {
        let num1 = Int(numField1.text ?? "") ?? 0
        let num2 = Int(numField2.text ?? "") ?? 0
        let result = num1 + num2
        addResult.text = String(result)
        numField1.endEditing(true)
        numField2.endEditing(true)
    }
}
