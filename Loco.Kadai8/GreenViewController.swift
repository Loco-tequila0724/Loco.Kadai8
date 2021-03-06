import UIKit

class GreenViewController: UIViewController {
    @IBOutlet weak private var currentNumberLabel: UILabel!
    @IBOutlet weak private var slider: UISlider!

    private var appDelegate: AppDelegate {
        (UIApplication.shared.delegate as? AppDelegate)!
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        currentNumberLabel.text = String(appDelegate.sliderValue)
        slider.value = appDelegate.sliderValue
    }

    @IBAction private func moveSlider(_ sender: Any) {
        currentNumberLabel.text = String(slider.value)
        appDelegate.sliderValue = slider.value
    }
}
