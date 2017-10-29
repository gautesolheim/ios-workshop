import UIKit

class ViewController: UIViewController {

    private let svadaProvider = SvadaProvider()

    @IBOutlet var svadaLabel: UILabel!


    @IBAction func generateSvadaButtonTapped(_ sender: UIButton) {
        svadaLabel.text = svadaProvider.generateSentence()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

