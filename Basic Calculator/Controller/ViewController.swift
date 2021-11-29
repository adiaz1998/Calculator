//
//  ViewController.swift
//  Basic Calculator
//
//  Created by Alan Díaz on 11/29/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textDisplay: UILabel!
    @IBOutlet weak var Clear: UIButton!
    @IBOutlet weak var Convert: UIButton!
    @IBOutlet weak var Modulo: UIButton!
    @IBOutlet weak var Divide: UIButton!
    @IBOutlet weak var Seven: UIButton!
    @IBOutlet weak var Eight: UIButton!
    @IBOutlet weak var Nine: UIButton!
    @IBOutlet weak var Multiply: UIButton!
    @IBOutlet weak var Four: UIButton!
    @IBOutlet weak var Five: UIButton!
    @IBOutlet weak var Six: UIButton!
    @IBOutlet weak var Subtract: UIButton!
    @IBOutlet weak var Three: UIButton!
    @IBOutlet weak var Two: UIButton!
    @IBOutlet weak var One: UIButton!
    @IBOutlet weak var Add: UIButton!
    @IBOutlet weak var Zero: UIButton!
    @IBOutlet weak var Decimal: UIButton!
    
    var Num1 = ""
    var Num2 = ""
    
    var operationArr = [Any]()
    var calc = Operations()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func pressNumber(sender: UIButton) {
        if operationArr.isEmpty {
            switch sender {
            case Zero:
                textDisplay.text?.append(contentsOf: "0")
                Num1.append("0")
            case One:
                textDisplay.text?.append(contentsOf: "1")
                Num1.append("1")
                print(Num1)
            case Two:
                textDisplay.text?.append(contentsOf: "2")
                Num1.append("2")
            case Three:
                textDisplay.text?.append(contentsOf: "3")
                Num1.append("3")
            case Four:
                textDisplay.text?.append(contentsOf: "4")
                Num1.append("4")
            case Five:
                textDisplay.text?.append(contentsOf: "5")
                Num1.append("5")
            case Six:
                textDisplay.text?.append(contentsOf: "6")
                Num1.append("6")
            case Seven:
                textDisplay.text?.append(contentsOf: "7")
                Num1.append("7")
            case Eight:
                textDisplay.text?.append(contentsOf: "8")
                Num1.append("8")
            case Nine:
                textDisplay.text?.append(contentsOf: "9")
                Num1.append("9")
            default:
                break

            }
        }
            else{
                switch sender {
                case Zero:
                    textDisplay.text?.append(contentsOf: "0")
                    Num2.append("0")
                case One:
                    textDisplay.text?.append(contentsOf: "1")
                    Num2.append("1")
                case Two:
                    textDisplay.text?.append(contentsOf: "2")
                    Num2.append("2")
                case Three:
                    textDisplay.text?.append(contentsOf: "3")
                    Num2.append("3")
                case Four:
                    textDisplay.text?.append(contentsOf: "4")
                    Num2.append("4")
                case Five:
                    textDisplay.text?.append(contentsOf: "5")
                    Num2.append("5")
                case Six:
                    textDisplay.text?.append(contentsOf: "6")
                    Num2.append("6")
                case Seven:
                    textDisplay.text?.append(contentsOf: "7")
                    Num2.append("7")
                case Eight:
                    textDisplay.text?.append(contentsOf: "8")
                    Num2.append("8")
                case Nine:
                    textDisplay.text?.append(contentsOf: "9")
                    Num2.append("9")
                default:
                    break

                }
            }

    }
    
    @IBAction func pressOperation(sender: UIButton) {
        switch sender {
        case Add:
            textDisplay.text? = ""
            textDisplay.text?.append(contentsOf: "+")
            let Num1: Int? = Int(Num1)
            operationArr.append(Num1)
            operationArr.append("+")
            print(operationArr)
        default:
            break

        }

    }
    
    @IBAction func equals(sender: UIButton) {
        let Num2: Int? = Int(Num2)
        operationArr.append(Num2)
        
        
        print(operationArr)
        
        let operation = operationArr[1] as! String
        
        if operation == "+"{
            operationArr.remove(at: 1)
            let result = calc.add(arr: operationArr)
            textDisplay.text? = "/(result)"
        }
        
    }

}

