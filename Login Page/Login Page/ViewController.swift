//
//  ViewController.swift
//  Login Page
//
//  Created by Student on 05/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var ForgotUserName: UIButton!
    
    @IBOutlet weak var ForgotPassword: UIButton!
    
    @IBAction func ForgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenPasswordOrFindUserName", sender:ForgotPassword)
    }
    
    @IBAction func ForgotUserName(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenPasswordOrFindUserName", sender: ForgotUserName)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = username.text
        guard let sender = sender as? UIButton else {return}
        if sender == ForgotPassword{
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == ForgotUserName{
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
    }
    
}
