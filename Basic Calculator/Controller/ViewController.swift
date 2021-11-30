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
            case Decimal:
                textDisplay.text?.append(contentsOf: ".")
                Num1.append(".")
            default:
                break

            }
        }
            else{
                if(textDisplay.text == "+" || textDisplay.text == "-" || textDisplay.text == "*" || textDisplay.text == "/"){
                    textDisplay.text = ""
                }
                
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
                case Decimal:
                    textDisplay.text?.append(contentsOf: ".")
                    Num2.append(".")
                default:
                    break

                }
            }

    }
    
    @IBAction func clear(sender: UIButton) {
        textDisplay.text? = ""
        Num1.removeAll()
        operationArr.removeAll()
        Num2.removeAll()
        
    }
    
    @IBAction func convert(sender: UIButton) {
        if(operationArr.isEmpty && !Num1.contains("-")){
            Num1 = "-" + Num1
            textDisplay.text? = "-" + textDisplay.text!
        } else if (operationArr.isEmpty && Num1.contains("-")){
            Num1.removeFirst()
            textDisplay.text?.removeFirst()
        } else if (!operationArr.isEmpty && !Num1.contains("-")){
            Num2 = "-" + Num2
            textDisplay.text? = "-" + textDisplay.text!
        } else if (!operationArr.isEmpty && Num1.contains("-")){
            Num2.removeFirst()
            textDisplay.text?.removeFirst()
        }
        
    }
    
    
    @IBAction func pressOperation(sender: UIButton) {
        if(!Num1.isEmpty){
            switch sender {
            case Add:
                textDisplay.text? = ""
                textDisplay.text?.append(contentsOf: "+")
                print(!Num1.contains("."))
                if(Num1.contains(".")){
                    let Num1: Double? = Double(Num1)
                    operationArr.append(Num1)
                } else{
                    let Num1: Int? = Int(Num1)
                    operationArr.append(Num1)
                }
                operationArr.append("+")
                print(operationArr)
            case Subtract:
                textDisplay.text? = ""
                textDisplay.text?.append(contentsOf: "-")
                if(Num1.contains(".")){
                    let Num1: Double? = Double(Num1)
                    operationArr.append(Num1)
                } else{
                    let Num1: Int? = Int(Num1)
                    operationArr.append(Num1)
                }
                operationArr.append("-")
                print(operationArr)
            case Multiply:
                textDisplay.text? = ""
                textDisplay.text?.append(contentsOf: "*")
                if(Num1.contains(".")){
                    let Num1: Double? = Double(Num1)
                    operationArr.append(Num1)
                } else{
                    let Num1: Int? = Int(Num1)
                    operationArr.append(Num1)
                }
                operationArr.append("*")
                print(operationArr)
            case Divide:
                textDisplay.text? = ""
                textDisplay.text?.append(contentsOf: "/")
                if(Num1.contains(".")){
                    let Num1: Double? = Double(Num1)
                    operationArr.append(Num1)
                } else{
                    let Num1: Int? = Int(Num1)
                    operationArr.append(Num1)
                }
                operationArr.append("/")
                print(operationArr)
            case Modulo:
                textDisplay.text? = ""
                if(Num1.contains(".")){
                    let Num1: Double? = Double(Num1)
                    operationArr.append(Num1)
                } else{
                    let Num1: Int? = Int(Num1)
                    operationArr.append(Num1)
                }
                let result = calc.percentage(arr: operationArr)
                textDisplay.text? = "\(result)"
                
            default:
                break

            }
        }
    }
    
    @IBAction func equals(sender: UIButton) {
        if (operationArr.count >= 2){
            if(Num2.contains(".")){
                let Num2: Double? = Double(Num2)
                operationArr.append(Num2)
            } else{
                let Num2: Int? = Int(Num2)
                operationArr.append(Num2)
            }

            print(operationArr)
            
            let operation = operationArr[1] as! String
            
            if operation == "+"{
                operationArr.remove(at: 1)
                let result = calc.add(arr: operationArr)
                textDisplay.text? = "\(result)"
            } else if operation == "-"{
                operationArr.remove(at: 1)
                let result = calc.subtract(arr: operationArr)
                textDisplay.text? = "\(result)"
            } else if operation == "*"{
                operationArr.remove(at: 1)
                let result = calc.multiply(arr: operationArr)
                textDisplay.text? = "\(result)"
            } else if operation == "/"{
                operationArr.remove(at: 1)
                let result = calc.divide(arr: operationArr)
                textDisplay.text? = "\(result)"
            }
        
        }

}

}
