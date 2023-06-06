//
//  SecondViewController.swift
//  to_do_list
//
//  Created by Jakub Sukiennim on 06/06/2023.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    @IBOutlet weak var o1: UILabel!
    
    @IBOutlet weak var waga1: UITextField!
    var w1tab: [Int] = []
    var l1: Double=0
  
    @IBAction func w1(_ sender: Any) {
        if let oc1 = Int(waga1.text ?? "") {
            w1tab.append(oc1)
            l1 += 1
            o1.text = (w1tab.map { String($0) }.joined(separator: ", "))
            
            
        } else {
            o1.text = "Enter number"
        }
    }
    //Wprowadzanie ocen wagi 2
    
    @IBOutlet weak var waga2: UITextField!
    
    @IBOutlet weak var o2: UILabel!
    
    var w2tab: [Int] = []
    var l2: Double=0
    @IBAction func w2(_ sender: Any) {
        if let oc2 = Int(waga2.text ?? "") {
              w2tab.append(oc2)
            l2 += 1
            o2.text = w2tab.map { String($0) }.joined(separator: ", ")

          } else {
              o2.text = "Enter number"
          }
        
    }
    //Wprowadzanie ocen wagi 3
    @IBOutlet weak var waga3: UITextField!
    
    @IBOutlet weak var o3: UILabel!
    var w3tab: [Int] = []
    var l3: Double=0
    @IBAction func w3(_ sender: Any) {
        if let oc3 = Int(waga3.text ?? "") {
              w3tab.append(oc3)
            l3 += 1
            o3.text = w3tab.map { String($0) }.joined(separator: ", ")

          } else {
              o3.text = "Enter number"
          }
        
    }
    //Wprowadzanie ocen wagi 4
    @IBOutlet weak var waga4: UITextField!
    
    @IBOutlet weak var o4: UILabel!
    var w4tab: [Int] = []
    var l4: Double=0
    @IBAction func w4(_ sender: Any) {
        if let oc4 = Int(waga4.text ?? "") {
              w4tab.append(oc4)
            l4 += 1
            o4.text = w4tab.map { String($0) }.joined(separator: ", ")

          } else {
              o4.text = "Enter number"
          }
        
    }
    //Wprowadzanie ocen wagi 5
    @IBOutlet weak var waga5: UITextField!
    
    @IBOutlet weak var o5: UILabel!
    var w5tab: [Int] = []
    var l5: Double=0
    @IBAction func w5(_ sender: Any) {
        if let oc5 = Int(waga5.text ?? "") {
              w5tab.append(oc5)
            l5 += 1
            o5.text = w5tab.map { String($0) }.joined(separator: ", ")

          } else {
              o5.text = "Enter number"
          }
        
    }
    //Wprowadzanie ocen wagi 6
    @IBOutlet weak var waga6: UITextField!
    
    @IBOutlet weak var o6: UILabel!
    var w6tab: [Int] = []
    var l6: Double=0
    @IBAction func w6(_ sender: Any) {
        if let oc6 = Int(waga6.text ?? "") {
              w6tab.append(oc6)
            l6 += 1
            o6.text = w6tab.map { String($0) }.joined(separator: ", ")

          } else {
              o6.text = "Enter number"
          }
        
    }
    //Wprowadzanie ocen wagi 7
    @IBOutlet weak var waga7: UITextField!
    
    @IBOutlet weak var o7: UILabel!
    var w7tab: [Int] = []
    var l7: Double=0
    @IBAction func w7(_ sender: Any) {
           if let oc7 = Int(waga7.text ?? "") {
            w7tab.append(oc7)
               o7.text = w7tab.map { String($0) }.joined(separator: ", ")

          l7 += 1
        } else {
            o7.text = "Enter number"
        }
        
    }
    //Wprowadzanie ocen wagi 8
    @IBOutlet weak var waga8: UITextField!
    
    @IBOutlet weak var o8: UILabel!
    var w8tab: [Int] = []
    var l8: Double=0
    @IBAction func w8(_ sender: Any) {
        if let oc8 = Int(waga8.text ?? "") {
              w8tab.append(oc8)
            l8 += 1
            o8.text = w8tab.map { String($0) }.joined(separator: ", ")

          } else {
              o8.text = "Enter number"
          }
        
    }
    
    func sumuj(Tab:[Int]) -> Int
    {
        var suma = 0
        for liczba in Tab
        {
            suma = suma + liczba
            
        }
        
        return suma
        
    }
    //Obliczanie średniej
    @IBOutlet weak var wynik: UILabel!
    @IBAction func liczenie(_ sender: Any) {
        
        l1 = l1*1
        l2 = l2*2
        l3 = l3*3
        l4 = l4*4
        l5 = l5*5
        l6 = l6*6
        l7 = l7*7
        l8 = l8*8
        let sum1 = sumuj(Tab: w1tab) * 1
        let sum2 = sumuj(Tab: w2tab) * 2
        let sum3 = sumuj(Tab: w3tab) * 3
        let sum4 = sumuj(Tab: w4tab) * 4
        let sum5 = sumuj(Tab: w5tab) * 5
        let sum6 = sumuj(Tab: w6tab) * 6
        let sum7 = sumuj(Tab: w7tab) * 7
        let sum8 = sumuj(Tab: w8tab) * 8
        let sumaOcen = sum1 + sum2 + sum3 + sum4 + sum5 + sum6 + sum7 + sum8
        let sumaWag = l1 + l2 + l3 + l4 + l5 + l6 + l7 + l8
        let srednia = Double(sumaOcen) / Double(sumaWag)
        let skroconaSrednia = String(format: "%.2f", srednia)
        
        
        wynik.text = "The average is: \(skroconaSrednia)"
        
    }
    
    
    @IBAction func reset(_ sender: Any) {
        w1tab.removeAll()
        w2tab.removeAll()
        w3tab.removeAll()
        w4tab.removeAll()
        w5tab.removeAll()
        w6tab.removeAll()
        w7tab.removeAll()
        w8tab.removeAll()
        o1.text = "Grades: "
        o2.text = "Grades: "
        o3.text = "Grades: "
        o4.text = "Grades: "
        o5.text = "Grades: "
        o6.text = "Grades: "
        o7.text = "Grades: "
        o8.text = "Grades: "
        waga1.placeholder = "Weight 1"
        waga2.placeholder = "Weight 2"
        waga3.placeholder = "Weight 3"
        waga4.placeholder = "Weight 4"
        waga5.placeholder = "Weight 5"
        waga6.placeholder = "Weight 6"
        waga7.placeholder = "Weight 7"
        waga8.placeholder = "Weight 8"
        
        wynik.text = "The average is: "
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

  

}
