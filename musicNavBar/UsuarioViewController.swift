//
//  ArtistViewController.swift
//  musicNavBar
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Rafael Albuquerque. All rights reserved.
//

import UIKit

class UsuarioViewController: UIViewController {

    var artist = Artist()
    
    @IBOutlet weak var usuarioImageView: UIImageView!
  
    @IBOutlet weak var usuarioNameLabel: UILabel!
    
    @IBOutlet weak var profissaoLabel: UILabel!
    
    
    @IBOutlet weak var usuarioAvaliacaoLabel: UILabel!
    
    @IBOutlet weak var descricaoUsuarioLabel: UITextView!
    @IBAction func contratarUsuarioButton(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       usuarioImageView.image = UIImage(named: "fake")
    
       usuarioNameLabel.text = artist.getName();
//        
       profissaoLabel.text = artist.getSong();
//        
       usuarioAvaliacaoLabel.text = artist.getAlbum();
        
        
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
