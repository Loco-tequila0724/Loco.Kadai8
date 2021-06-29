import UIKit

class RedViewController: UIViewController {
    @IBOutlet weak private var currentNumberLabel: UILabel!
    @IBOutlet weak private var sliderRedView: UISlider!
    internal var sliderValue: Float = 0.0

    override func viewWillAppear(_ animated: Bool) {
        currentNumberLabel.text = String(sliderValue)
        sliderRedView.value = sliderValue
    }

    @IBAction private func moveSlider(_ sender: Any) {
        currentNumberLabel.text = String(sliderValue)
        sliderValue = sliderRedView.value

        guard let greenViewController = self.tabBarController?.viewControllers![1] as? GreenViewController else {
            return
        }
        greenViewController.sliderValue = sliderValue
    }
}
