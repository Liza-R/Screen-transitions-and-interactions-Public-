
import UIKit

class ChangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
var color = ""
    
    @IBOutlet weak var colorLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? AllColorViewController, segue.identifier == "showColor"{

            vc.delegate = self
            vc.colorL = colorLabel.text!

        }
    }
    func update(){
        colorLabel.text = color
    }
    
}
extension ChangeViewController: AllControllerDelegate{
    func setColor(_ color: String) {
        self.color = color
        update()
    }
}
