//
//  ArtistViewController.swift
//  musicNavBar
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Rafael Albuquerque. All rights reserved.
//

import UIKit

class ArtistViewController: UIViewController {

    var artist = Artist()
    
    @IBOutlet weak var artistImageView: UIImageView!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
    
    @IBOutlet weak var artistSongLabel: UILabel!
    
    
    @IBOutlet weak var artistAlbumLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        artistImageView.image = UIImage(named: "fake")
        
        artistNameLabel.text = artist.getName();
        
        artistSongLabel.text = artist.getSong();
        
        artistAlbumLabel.text = artist.getAlbum();
        
        
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
