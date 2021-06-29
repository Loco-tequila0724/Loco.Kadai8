import UIKit

class GreenViewController: UIViewController {
    @IBOutlet weak private var currentNumberLabel: UILabel!
    @IBOutlet weak private var sliderGreenView: UISlider!
    internal var sliderValue: Float = 0.0

    override func viewWillAppear(_ animated: Bool) {
        currentNumberLabel.text = String(sliderValue)
        sliderGreenView.value = sliderValue
    }

    @IBAction private func moveSlider(_ sender: Any) {
        currentNumberLabel.text = String(sliderValue)
        sliderValue = sliderGreenView.value

        guard let redViewController = self.tabBarController?.viewControllers![0] as? RedViewController else {
            return
        }
        redViewController.sliderValue = sliderValue
    }
}
