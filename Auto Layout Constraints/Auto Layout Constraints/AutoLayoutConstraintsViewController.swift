//
//  AutoLayoutConstraintsViewController.swift
//  Auto Layout Constraints
//
//  Created by Jessica Elizabeth Sellers on 9/11/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import UIKit

class AutoLayoutConstraintsViewController: UIViewController {
    
    //created button programmatically
    let exampleButton = UIButton()
    var buttonConstraints:[NSLayoutConstraint] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Edditted button
        exampleButton.translatesAutoresizingMaskIntoConstraints = false
        exampleButton.backgroundColor = UIColor.blue
        exampleButton.setTitle("Press Here", for: .normal)
        exampleButton.setTitleColor(UIColor.white, for: .normal)
        self.view.addSubview(exampleButton)
        
        //Button Constraints
        let topConstraint = exampleButton.topAnchor.constraint(equalTo: self.view.topAnchor)
        let lowerConstraint = exampleButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        let leftConstraint = exampleButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        let rightConstraint = exampleButton.rightAnchor.constraint(equalTo: self.view.rightAnchor)
        
        buttonConstraints = [topConstraint, lowerConstraint, leftConstraint, rightConstraint]
        NSLayoutConstraint.activate(buttonConstraints)
        
        exampleButton.addTarget(self, action: #selector(action), for: .touchUpInside)
        
    }
    
    @objc func action(){
        NSLayoutConstraint.deactivate(buttonConstraints)
        exampleButton.backgroundColor = UIColor.yellow
        exampleButton.setTitle("New Constraints", for: .normal)
        exampleButton.setTitleColor(UIColor.black, for: .normal)
        
        //new constraints
        let buttonHeight = exampleButton.heightAnchor.constraint(equalToConstant: 200)
        let buttonWidth = exampleButton.widthAnchor.constraint(equalToConstant: 200)
        let buttonXPlacement = exampleButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let buttonYPlacement = exampleButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        
        let newButtonConstraints:[NSLayoutConstraint] = [buttonHeight, buttonWidth, buttonXPlacement, buttonYPlacement]
        
        NSLayoutConstraint.activate(newButtonConstraints)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
