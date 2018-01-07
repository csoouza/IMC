//
//  ViewController.swift
//  IMC
//
//  Created by Cleyton Souza on 10/12/17.
//  Copyright © 2017 Cleyton Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfPeso: UITextField!
    @IBOutlet weak var tfAltura: UITextField!
    @IBOutlet weak var lbresultado: UILabel!
    @IBOutlet weak var ivresultado: UIImageView!
    @IBOutlet weak var viresultado: UIView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func btcalcular(_ sender: Any) {
        if let peso = Double(tfPeso.text!), let altura = Double(tfAltura.text!){
        imc = peso / pow(altura, 2)
        showResults()
        
            
            
            
    }

}

    func showResults(){
        var resultado: String = ""
        var imagem: String = ""
        switch imc {
            case 0..<16:
                resultado = "Magreza"
                imagem = "abaixo"
            case 16..<18.5:
                resultado = "Abaixo do peso"
                imagem = "abaixo"
            case 18.5..<25:
                resultado = "Peso Ideal"
                imagem = "ideal"
            case 25..<30:
                resultado = "Sobrepeso"
                imagem = "sobre"
            default:
                resultado = "Obesidade"
                imagem = "obesidade"
        }
        lbresultado.text = "\(Int(imc)): \(resultado)"
        ivresultado.image = UIImage(named: imagem)
        viresultado.isHidden = false
        view.endEditing(true)
}
}
