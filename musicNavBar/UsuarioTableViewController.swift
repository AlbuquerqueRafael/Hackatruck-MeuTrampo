//
//  ArtistTableViewController.swift
//  musicNavBar
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Rafael Albuquerque. All rights reserved.
//

import UIKit

class UsuarioTableViewController: UITableViewController {

    let searchController = UISearchController(searchResultsController: nil)
    
    var filteredArtists = [Artist]()
    var artists = [Artist]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        artists = ArtistDAO.getArtists();
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if searchController.isActive && searchController.searchBar.text != "" {
            return filteredArtists.count
        }
        return artists.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "userIdentifier", for: indexPath)
        
        if let userCell = cell as? UsuarioTableViewCell{
            let artist: Artist
            
            if searchController.isActive && searchController.searchBar.text != "" {
                artist = filteredArtists[indexPath.row]
            } else {
                artist = artists[indexPath.row]
            }
            
            userCell.userNameLabel.text = artist.getName();
            userCell.profissaoUserLabel.text = artist.getSong();
        }
        
        // Configure the cell...
        
        return cell
        
        // Configure the cell...
        
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            self.artists.remove(at: indexPath.row);
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    
    func filterContent(for searchText: String, scope: String = "All") {
        filteredArtists = artists.filter({ pod in
            return pod.getName().lowercased().contains(searchText.lowercased())
        })
        
        tableView.reloadData()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showNextView"
        {
            if let newView = segue.destination as? UsuarioViewController {
                
                let index = tableView.indexPathForSelectedRow?.row
                
                var artist = Artist()
                
                if searchController.isActive && searchController.searchBar.text != "" {
                    artist = filteredArtists[index!]
                }else{
                    artist = artists[index!]
                }
                
                
                newView.artist = artist;
         
            }
        }
        

    }
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}


extension UsuarioTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContent(for: searchController.searchBar.text!)
    }
}
