import UIKit
import Defines


class ViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()

        if Defines.Device.isSimulator {
            print("We're running on the Simulator")
        }
    }
}

