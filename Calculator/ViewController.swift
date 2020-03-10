//
//  ViewController.swift
//  Calculator
//
//  Created by Robert Adrian Bucur on 07/12/2019.
//  Copyright © 2019 Robert Adrian Bucur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var currentNumber: Int = 0
    var previousNumber: Int = 0
    var actionPerformed: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func digitButtonsPressed(_ sender: UIButton) {
        
        if actionPerformed == 10 {
            clearButtonPressed(sender)
        }
        
        if resultLabel.text == "0" ||
        resultLabel.text == "+" ||
        resultLabel.text == "-" ||
        resultLabel.text == "x" ||
        resultLabel.text == "÷" {
            resultLabel.text = ""
        }
        
        switch sender.tag {
        case 0:
            resultLabel.text! += "0"
        case 1:
            resultLabel.text! += "1"
        case 2:
            resultLabel.text! += "2"
        case 3:
            resultLabel.text! += "3"
        case 4:
            resultLabel.text! += "4"
        case 5:
            resultLabel.text! += "5"
        case 6:
            resultLabel.text! += "6"
        case 7:
            resultLabel.text! += "7"
        case 8:
            resultLabel.text! += "8"
        case 9:
            resultLabel.text! += "9"
        default:
            break
        }
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        resultLabel.text = "0"
        currentNumber = 0
        previousNumber = 0
    }
    
    @IBAction func operationButtons(_ sender: UIButton) {
        
        previousNumber = currentNumber
        if resultLabel.text != "ERROR" {
            currentNumber = Int(resultLabel.text!)!
        }
        
        switch sender.tag {
        case 10:
            // =
            switch actionPerformed {
            case 11:
                resultLabel.text = String(previousNumber + currentNumber)
            case 12:
                resultLabel.text = String(previousNumber - currentNumber)
            case 13:
                resultLabel.text = String(previousNumber * currentNumber)
            case 14:
                if currentNumber == 0 {
                    resultLabel.text = "ERROR"
                    break
                }
                resultLabel.text = String(previousNumber / currentNumber)
            default:
                break
            }
            actionPerformed = 10
        case 11:
            // +
            switch actionPerformed {
            case 11:
                resultLabel.text = String(previousNumber + currentNumber)
            case 12:
                resultLabel.text = String(previousNumber - currentNumber)
            case 13:
                resultLabel.text = String(previousNumber * currentNumber)
            case 14:
                if currentNumber == 0 {
                    resultLabel.text = "ERROR"
                    break
                }
                resultLabel.text = String(previousNumber / currentNumber)
            default:
                break
            }
            actionPerformed = 11
            resultLabel.text = "+"
        case 12:
            // -
            switch actionPerformed {
            case 11:
                resultLabel.text = String(previousNumber + currentNumber)
            case 12:
                resultLabel.text = String(previousNumber - currentNumber)
            case 13:
                resultLabel.text = String(previousNumber * currentNumber)
            case 14:
                if currentNumber == 0 {
                    resultLabel.text = "ERROR"
                    break
                }
                resultLabel.text = String(previousNumber / currentNumber)
            default:
                break
            }
            actionPerformed = 12
            resultLabel.text = "-"
        case 13:
            // *
            switch actionPerformed {
            case 11:
                resultLabel.text = String(previousNumber + currentNumber)
            case 12:
                resultLabel.text = String(previousNumber - currentNumber)
            case 13:
                resultLabel.text = String(previousNumber * currentNumber)
            case 14:
                if currentNumber == 0 {
                    resultLabel.text = "ERROR"
                    break
                }
                resultLabel.text = String(previousNumber / currentNumber)
            default:
                break
            }
            actionPerformed = 13
            resultLabel.text = "x"
        case 14:
            // /
            switch actionPerformed {
            case 11:
                resultLabel.text = String(previousNumber + currentNumber)
            case 12:
                resultLabel.text = String(previousNumber - currentNumber)
            case 13:
                resultLabel.text = String(previousNumber * currentNumber)
            case 14:
                if currentNumber == 0 {
                    resultLabel.text = "ERROR"
                    break
                }
                resultLabel.text = String(previousNumber / currentNumber)
            default:
                break
            }
            actionPerformed = 14
            resultLabel.text = "÷"
        default:
            break
        }
    }
}

