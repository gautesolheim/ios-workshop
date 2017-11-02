import UIKit

class ViewController: UIViewController {

    private let nonsenseProvider = NonsenseProvider()

    @IBOutlet var nonsenseLabel: UILabel!


    @IBAction func generateNonsenseButtonTapped(_ sender: UIButton) {
        updateNonsenseLabel()
    }

    func updateNonsenseLabel() {
        nonsenseLabel.text = nonsenseProvider.generateSentence()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.viewController = self
        }

        updateNonsenseLabel()
    }

}

