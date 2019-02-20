//
//  ViewController.swift
//  Quiz
//
//  Created by Vipul Singh on 2/19/19.
//  Copyright © 2019 Vipul Singh. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel : UILabel!
    @IBOutlet var answerLabel : UILabel!
    
    let question : [String] = [
        "what is 7 +7?",
        "what is the capital of wisconsin?",
        "what is cognac made from?"
    ]
    
    let answers = [
        "14",
        "madison",
        "grapes"
        
    ]
    //let someInts = [1,2] called inferring the type
    
    var currentQuestionIndex : Int = 0
    
    fileprivate func extractedFunc() {
        if(currentQuestionIndex >= question.count){
            currentQuestionIndex = 0
        }
    }
    
    @IBAction func showNextQuestion(_ sender:UIButton)
    {
        currentQuestionIndex += 1
        extractedFunc()
        
        questionLabel.text = question[currentQuestionIndex %
            question.count]
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender:UIButton)
    {
        answerLabel.text = answers[currentQuestionIndex %
            question.count]
        answerLabel.textColor = UIColor.green
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("view did load")
        questionLabel.text = question[currentQuestionIndex]
    }



}

