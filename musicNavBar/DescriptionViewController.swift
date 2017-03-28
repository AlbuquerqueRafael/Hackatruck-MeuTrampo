//
//  DescriptionViewController.swift
//  musicNavBar
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Rafael Albuquerque. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {
    @IBOutlet weak var descriptionImage: UIImageView!

    @IBOutlet weak var descriptionTextView: UITextView!
    
    var image = String();
    var descript = String();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionTextView.text = descript;
        descriptionImage.image = UIImage(named: image)
        // Do any additional setup after loading the view.
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
