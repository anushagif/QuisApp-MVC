//
//  ViewController.swift
//  QuisApp2
//
//  Created by Anusha on 15/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var bank = QuestionArray()
    public var i = 0
    public var count = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var optionBtn1: UIButton!
    @IBOutlet weak var optionBtn2: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(i<bank.quiz.count){
            
            assignText()
        }
        
    }
    
    func assignText(){
        questionLabel.text = bank.quiz[i].question
        optionBtn1.setTitle(bank.quiz[i].optionOne, for: .normal)
        optionBtn2.setTitle(bank.quiz[i].optionTwo, for: .normal)
    }
    
    
    


    @IBAction func nextBtn(_ sender: UIButton) {
    
        next()
    }
    @IBAction func optionPressed(_ sender: UIButton) {
        
        let val = sender.titleLabel?.text
        if val == bank.quiz[i].answer{
            count = count + 1
            print(count)
          
            next()
        }
        else
        {
            let alert = UIAlertController(title: "Sorry", message: "You got a wrong answer...!", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "OK", style: .destructive,handler: {alert in self.next()}))
            present(alert, animated: true)
        }
        
    }
    func next(){
        i = i+1

        if i == (bank.quiz.count){
            let vc = storyboard?.instantiateViewController(withIdentifier: "nextpage") as! nextVC
            vc.scored = "you got \(count) points"
            present(vc, animated: true)
        }
        viewDidLoad()
    }
}

