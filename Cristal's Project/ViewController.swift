//
//  ViewController.swift
//  Cristal's Project
//
//  Created by Luis Santana on 19/9/22.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var firstStack: [UIStackView]!
    @IBOutlet var secondStack: [UIStackView]!
    @IBOutlet var thirdStack: [UIStackView]!
    @IBOutlet var fourthStack: [UIStackView]!
    @IBOutlet var fiveStack: [UIStackView]!
    
    @IBOutlet weak var resultLabel: UILabel!
    

    var result:Float = 0.0
    var operation:Operations = .NONE
    var value:String = " "
    var numeros = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        firstStack.forEach({ if $0.subviews is [UIButton]{
            $0.subviews.forEach({ button in
                if button is UIButton{
                    button.layer.cornerRadius = button.frame.width / 2
                }
            })
        }})
        secondStack.forEach({ if $0.subviews is [UIButton]{
            $0.subviews.forEach({ button in
                if button is UIButton{
                    button.layer.cornerRadius = button.frame.width / 2
                }
            })
        }})
        thirdStack.forEach({ if $0.subviews is [UIButton]{
            $0.subviews.forEach({ button in
                if button is UIButton{
                    button.layer.cornerRadius = button.frame.width / 2
                }
            })
        }})
        fourthStack.forEach({ if $0.subviews is [UIButton]{
            $0.subviews.forEach({ button in
                if button is UIButton{
                    button.layer.cornerRadius = button.frame.width / 2
                }
            })
        }})
        
        
        fiveStack.forEach({
            $0.subviews.forEach { vi in
                if vi is UIButton{
                    vi.layer.cornerRadius = vi.frame.width / 4
                }else{
                    if vi is UIStackView{
                        vi.subviews.forEach { vi2 in
                            if vi2 is UIButton {
                                vi2.layer.cornerRadius = vi2.frame.width / 2
                            }
                        }
                    }
                }
            }
        })
    }
    
    @IBAction func zeroAction(_ sender: UIButton) {
        if operation == .RESTA{
            
        }
        value = value + "0"
        resultLabel.text = value
        
        
    }
    @IBAction func oneAction(_ sender: UIButton) {
        
        if operation == .RESTA{
            if value.count > 1{
                value = value + "1"
                
            }else{
                value = value + "-1"
            }
            
            resultLabel.text = value

        }else{
            value = value + "1"
            resultLabel.text = value
        }
        
    }
    @IBAction func twoAction(_ sender: UIButton) {
        if operation == .RESTA{
            if value.count > 1{
                value = value + "2"
                
            }else{
                value = value + "-2"
            }
            
            resultLabel.text = value

        }else{
            value = value + "2"
            resultLabel.text = value
        }
    }
    @IBAction func threeAction(_ sender: UIButton) {
        
        if operation == .RESTA{
            if value.count > 1{
                value = value + (sender.titleLabel?.text)!
                
            }else{
                value = value + "-" + (sender.titleLabel?.text)!
            }
            
            resultLabel.text = value

        }else{
            value = value + (sender.titleLabel?.text)!
            resultLabel.text = value
        }
       
    }
    @IBAction func fourAction(_ sender: UIButton) {
        if operation == .RESTA{
            if value.count > 1{
                value = value + "4"
                
            }else{
                value = value + "-4"
            }
            
            resultLabel.text = value

        }else{
            value = value + "4"
            resultLabel.text = value
        }
       
    }
    @IBAction func fiveAction(_ sender: UIButton) {
        if operation == .RESTA{
            if value.count > 1{
                value = value + "5"
                
            }else{
                value = value + "-5"
            }
            
            resultLabel.text = value

        }else{
            value = value + "5"
            resultLabel.text = value
        }
       
    }
    @IBAction func sixAction(_ sender: UIButton) {
        if operation == .RESTA{
            if value.count > 1{
                value = value + "6"
                
            }else{
                value = value + "-6"
            }
            
            resultLabel.text = value

        }else{
            value = value + "6"
            resultLabel.text = value
        }
        
    }
    
    @IBAction func sevenAction(_ sender: UIButton) {
        if operation == .RESTA{
            if value.count > 1{
                value = value + "7"
                
            }else{
                value = value + "-7"
            }
            
            resultLabel.text = value

        }else{
            value = value + "7"
            resultLabel.text = value
        }
    }
    
    @IBAction func eightAction(_ sender: UIButton) {
        if operation == .RESTA{
            if value.count > 1{
                value = value + "8"
                
            }else{
                value = value + "-8"
            }
            
            resultLabel.text = value

        }else{
            value = value + "8"
            resultLabel.text = value
        }
        
    }
    @IBAction func nineAction(_ sender: UIButton) {
        if operation == .RESTA{
            if value.count > 1{
                value = value + "9"
                
            }else{
                value = value + "-9"
            }
            
            resultLabel.text = value

        }else{
            value = value + "9"
            resultLabel.text = value
        }
        
    }
    
    @IBAction func resetValueAction(_ sender: UIButton) {
        value = ""
        resultLabel.text = "0"
        numeros = [Int]()
        operation = .NONE
       
    }
    
    @IBAction func equalAction(_ sender: UIButton) {
        
        
        switch operation{
        case .SUMA:
            if value != ""{
                addnumber(num: Int(value)!)
            }
            print("Suma")
            
            var suma =  0
            
            for num in numeros {
                suma = suma + num
            }
            resultLabel.text = "\(suma)"
            numeros.removeAll()
            addnumber(num: suma)
        case .RESTA:
            if value != ""{
                addnumber(num: Int(value)!)
            }
            print("Resta")
            var resta =  0
            
            for num in numeros {
                resta = resta + num
            }
            resultLabel.text = "\(resta)"
            numeros.removeAll()
            addnumber(num: resta)
            
        case .DIVISION:
            print("Division")
            
            var nume =  0
            
            for num in numeros {
                nume = nume + num
            }
            let div = nume / Int(value)!
            resultLabel.text = "\(div)"
            numeros.removeAll()
            addnumber(num: div)
            
        case .MULTIPLICACION:
            
            print("Multiplicacion")
            
            var nume =  0
            
            for num in numeros {
                nume = nume + num
            }
            let mult = nume * Int(value)!
            resultLabel.text = "\(mult)"
            numeros.removeAll()
        case .NONE:
            return
        }
        
        
        
        operation = .NONE
        value = ""
        
    }
    
    @IBAction func plusAction(_ sender: UIButton) {
        
        operation = .SUMA
        if value != ""{
            addnumber(num: Int(value)!)
            value = ""
        }
        

    }
    @IBAction func minusAction(_ sender: UIButton) {
        
        operation = .RESTA
        if value != ""{
            addnumber(num: Int(value)!)
            value = ""
        }

    }
    @IBAction func multAction(_ sender: UIButton) {
        
        operation = .MULTIPLICACION

        if value != ""{
            addnumber(num: Int(value)!)
            value = ""
        }
    }
    @IBAction func divAction(_ sender: UIButton) {
        
        operation = .DIVISION
        if value != ""{
            addnumber(num: Int(value)!)
            value = ""
        }
    }
    
    
    func addnumber(num: Int){
        numeros.append(num)
    }
    
}


enum Operations {
    case SUMA
    case RESTA
    case DIVISION
    case MULTIPLICACION
    case NONE
}
