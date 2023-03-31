//
//  ResultViewController.swift
//  RoshamboCode
//
//  Created by João Ponte on 31/03/2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    var result: [String]?
    @IBOutlet var imageResult: UIImageView!
    @IBOutlet var labelResult: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        if let result = result {
            self.imageResult.image = UIImage(named: result[0])
            self.labelResult.text = result[1]
        }
        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
