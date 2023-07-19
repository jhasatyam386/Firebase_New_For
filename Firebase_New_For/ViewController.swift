//
//  ViewController.swift
//  Firebase_New_For
//
//  Created by r84 on 19/07/23.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseDatabase
import FirebaseFirestore

class ViewController: UIViewController {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    
    var ref:DatabaseReference!
    var ref2:Firestore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        ref2 = Firestore.firestore()
        
    }

    @IBAction func submitButtonAction(_ sender: Any) {
      authodination()
    }
    
    func realtime(){
       
    }
    func refrence(){
        
    }
    func addData(){
        
    }
    func authodination(){
        Auth.auth().createUser(withEmail: text1.text!, password: text2.text!) { authoDataResult, error in
            print(authoDataResult,error?.localizedDescription)
        }
        
    }
    
}

