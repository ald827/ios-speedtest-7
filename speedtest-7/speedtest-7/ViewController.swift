//
//  ViewController.swift
//  speedtest-7
//
//  Created by Safeyah on 6/13/20.
//  Copyright © 2020 kuwaitcodes.cohort2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameFeild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func next(_ sender: Any) {
        let name = nameFeild.text
        if nameFeild.text!.count >= 2{
            performSegue(withIdentifier: "details", sender: name)
        }
    }
    
    // Hint: `performSegue` is the way
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name = sender as! String
        let detailsVC = segue.destination as! DetailsVC
        detailsVC.name = "DEEMMMAAH"
    }
}
