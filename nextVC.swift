//
//  nextVC.swift
//  QuisApp2
//
//  Created by Anusha on 15/11/22.
//

import UIKit

class nextVC: UIViewController {
    
    @IBOutlet weak var score: UILabel!
    
    public var scored = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        score.text = scored
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
