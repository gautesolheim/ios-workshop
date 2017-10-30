import UIKit

class ViewController: UIViewController {

    private let nonsenseProvider = NonsenseProvider()

    @IBOutlet var nonsenseLabel: UILabel!


    @IBAction func generateNonsenseButtonTapped(_ sender: UIButton) {
        nonsenseLabel.text = nonsenseProvider.generateSentence()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        nonsenseLabel.text = nonsenseProvider.generateSentence()
    }

}

