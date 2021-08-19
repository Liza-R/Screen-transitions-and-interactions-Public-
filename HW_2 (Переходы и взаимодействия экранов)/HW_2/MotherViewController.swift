
import UIKit


class MotherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private var daughterVC: DaughterViewController?
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DaughterViewController, segue.identifier == "showDaughter"{
            daughterVC = vc
            vc.delegate = self
            
        }
    }
    
    @IBAction func greenM(_ sender: Any) {
        
        daughterVC?.colorD = .green
  
    }
    
    @IBAction func yellowM(_ sender: Any) {
        daughterVC?.colorD = .yellow
    }
    
    @IBAction func purpleM(_ sender: Any) {
        daughterVC?.colorD = .purple
    }
    
}
extension MotherViewController: DaughterDel{
    func setColor(_ colorM: UIColor){
        view.backgroundColor = .init(colorM)
    }
}
