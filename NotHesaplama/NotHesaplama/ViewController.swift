
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var midtermText: UITextField!
    @IBOutlet weak var finalText: UITextField!
    @IBOutlet weak var noteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteLabel.text = ""
    }

    @IBAction func calculateNote(_ sender: Any) {
        guard let midterm = Int(midtermText.text ?? ""),
              let final = Int(finalText.text ?? "")
        else {
            noteLabel.text = "Lütfen geçerli sayılar girin."
            return
        }

        let note = (Double(midterm) * 0.4) + (Double(final) * 0.6)
        
        var grade = ""

        if note >= 95 {
            grade = "A1 - Geçer Not"
        } else if note >= 90 {
            grade = "A2 - Geçer Not"
        } else if note >= 85 {
            grade = "A3 - Geçer Not"
        } else if note >= 80 {
            grade = "B1 - Geçer Not"
        } else if note >= 75 {
            grade = "B2 - Geçer Not"
        } else if note >= 70 {
            grade = "B3 - Geçer Not"
        } else if note >= 65 {
            grade = "C1 - Geçer Not"
        } else if note >= 60 {
            grade = "C2 - Geçer Not"
        } else if note >= 55 {
            grade = "D1 - Koşullu Geçer Not"
        } else if note >= 50 {
            grade = "D2 - Koşullu Geçer Not"
        } else {
            grade = "F1 - Başarısız Not"
        }
        
        
        noteLabel.text = "Notunuz: \(Int(note))\nDerece: \(grade)"
    }
}

    
    

