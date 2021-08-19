
import UIKit

protocol AllControllerDelegate{
    func setColor(_ color: String)
}

class AllColorViewController: UIViewController {

    var colorL = ""
    
    var delegate: AllControllerDelegate?

    
    @IBOutlet weak var colorTF: UITextField!
    
    @IBAction func colorEDCH(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorTF.text = colorL

    }
    
    @IBOutlet weak var buttonColorAll: UITextField!
    
    @IBAction func green(_ sender: Any) {
        colorTF.text = "Выбран зелёный!"
        colorL = colorTF.text!
        delegate?.setColor(colorL)
        
        dismiss(animated: true, completion: nil)

    }
    
    @IBAction func blue(_ sender: Any) {
        colorTF.text = "Выбран синий!"
        colorL = colorTF.text!
        delegate?.setColor(colorL)

        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func red(_ sender: Any) {
        colorTF.text = "Выбран красный!"
        colorL = colorTF.text!
        delegate?.setColor(colorL)
        
        dismiss(animated: true, completion: nil)
    }
 
}
