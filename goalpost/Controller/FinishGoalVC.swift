//
//  FinishGoalVC.swift
//  goalpost
//
//  Created by Daniel Bonehill on 24/03/2018.
//  Copyright © 2018 Daniel Bonehill. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var pointsTxtField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBtn.bindToKeyboard()
        pointsTxtField.delegate = self
    }
    
    func initDate(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    @IBAction func createGoalBtnPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
}
