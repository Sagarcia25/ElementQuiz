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
    
    @IBOutlet var modeSelector: UISegmentedControl!
    @IBOutlet var textField: UITextField!
    
    var mode: Mode = .flashCard
    var state: State = .question
    
    let elementList = ["Carbon","Gold","Chlorine","Sodium"]
    var currentElementIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func showAnswer(_ sender: UIButton) {
        state = .answer
        updateUI()
    }
    
    @IBAction func nextElement(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count{
            currentElementIndex = 0
        }
        state = .question
        updateUI()
    }
    
    //updates the UI in flashCard mode
    func updateFlashCardUI(){
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
        if state == .answer{
            answerLabel.text = elementName
        } else {
            answerLabel.text = "?"
        }
    }
    
    //updates the UI in quiz mode
    func updateQuizUI(){
        
    }

    //updates the app's UI based on its mode and state
    func updateUI(){
        switch mode{
        case .flashCard:
            updateFlashCardUI()
        case .quiz:
            updateQuizUI()
        }
    }
}

