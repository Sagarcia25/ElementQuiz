//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Salvador Garcia on 1/18/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var answerLabel: UILabel!
    
    let elementList = ["Carbon","Gold","Chlorine","Sodium"]
    var currentElementIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }

    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func nextElement(_ sender: UIButton) {
        currentElementIndex += 1
        updateElement()
    }
    
    func updateElement(){
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        answerLabel.text = "?"
    }

}

