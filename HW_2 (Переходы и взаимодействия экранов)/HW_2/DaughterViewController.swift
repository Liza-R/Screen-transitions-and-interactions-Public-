
import UIKit

protocol DaughterDel{
    func setColor(_ colorM: UIColor)
}

class DaughterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var colorD: UIColor = .black{
        didSet{
            view?.backgroundColor = .init(colorD)
        }
    }
    
   //private var motherVC_: MotherViewController?
    
    var delegate: MotherViewController?
   
    
    @IBAction func greenD(_ sender: Any) {
        delegate?.setColor(.green)
        
    }
    
    @IBAction func yellowD(_ sender: Any) {
        delegate?.setColor(.yellow)
    }
    
    @IBAction func purpleD(_ sender: Any) {
        delegate?.setColor(.purple)
    }
}


