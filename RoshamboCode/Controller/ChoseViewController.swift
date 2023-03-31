//
//  ViewController.swift
//  RoshamboCode
//
//  Created by João Ponte on 31/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func randomResult(chose: String) -> [String] {
        let resultArray = ["Rock", "Paper", "Scissors"]
        if let resultString = resultArray.randomElement() {
            let randomIndex = Int.random(in: 0..<resultString.count)
            let computerChoice = String(resultString[resultString.index(resultString.startIndex, offsetBy: randomIndex)])
            switch (chose, computerChoice) {
            case (_, computerChoice) where chose == computerChoice:
                return ["itsATie", "It's a tie"]
            case ("Rock", "Scissors"):
                return ["RockCrushersScissors", "Rock crushers scissors. You win!"]
            case ("Paper", "Rock"):
                return ["PaperCoversRock", "Paper covers rock. You win! "]
            case ("Scissors", "Paper"):
                return ["ScissorsCutPaper", " Scissors cut paper. You win!"]
            case ("Scissors", "Rock"):
                return ["RockCrushersScissors", "Rock crushers scissors. You lose!"]
            case ("Rock", "Paper"):
                return ["PaperCoversRock", "Paper covers rock. You lose! "]
            case ("Paper", "Scissors"):
                return ["ScissorsCutPaper", " Scissors cut paper. You lose!"]
            default:
                return ["Invalid input", "Error"]
            }
        }
        return ["Error", "Error"]
        
    }
    
    @IBAction func choseRock() {
        var controller: ResultViewController
        
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        controller.result = self.randomResult(chose: "Rock")
        present(controller, animated: true, completion:  nil)
    }
}
