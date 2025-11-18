

import UIKit

class JuegoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBOutlet weak var dadoIzquierdo: UIImageView!
    
    @IBOutlet weak var dadoDerecho:
    UIImageView!
    @IBAction func accionBotonAtras(_ remitente: UIButton) {
        cerrarVistaModal()
    }
    
    func cerrarVistaModal() {
        self.dismiss(animated: true) {
           
            
        }
    }
    
    func animardados(){
        let imagenesdadoizquierda = [
            UIImage(named: "dado1")!,
            UIImage(named: "dado2")!,
            UIImage(named: "dado3")!,
            UIImage(named: "dado4")!,
            UIImage(named: "dado5")!,
            UIImage(named: "dado6")!
        ]
        
        dadoIzquierdo.animationImages = imagenesdadoizquierda
        dadoIzquierdo.animationDuration = 0.5
        dadoIzquierdo.animationRepeatCount = 1
        dadoIzquierdo.startAnimating()
        
        let resultadoIzquierdo = Int.random(in: 1...6)
        let nombreImagenFinal = "Dado1_resultado_\(resultadoIzquierdo)"
        
        let tiempoAnimacion: TimeInterval = 0.5
        
        //DispatchQueue.main.asyncAfter(deadline: .now() + tiempoAnimacion){
            //self.dadoIzquierdo.stopAnimating()
            //self.dadoIzquierdo.image = UIImage(named: nombreImagenFinal)
        //}
        
    }

    @IBAction func Tirar(_ sender: Any) {
        
        animardados()
    }
}
