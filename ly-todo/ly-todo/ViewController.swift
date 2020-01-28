

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var centerTitle: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTapped(_ sender: Any) {
        count = count + 1 // count += 1
        if count == 10 {
            view.backgroundColor = .red
        }
        centerTitle.text = String(count)

    }
}

