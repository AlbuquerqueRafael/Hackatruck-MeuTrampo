//
//  SeeMoreViewController.swift
//  musicNavBar
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Rafael Albuquerque. All rights reserved.
//

import UIKit

class SeeMoreViewController: UIViewController {
    
    @IBOutlet weak var seeMoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        seeMoreLabel.text = "Sia";
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showSeeMore"
        {
            if let newView = segue.destination as? DescriptionViewController {
                let artists = ArtistDAO.getArtists();
                
            
                
                newView.image = "fake"
                newView.descript = "Teste"
                
            }
        }
        
        
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
