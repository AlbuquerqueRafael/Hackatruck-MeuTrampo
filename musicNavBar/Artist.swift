//
//  Artist.swift
//  musicNavBar
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Rafael Albuquerque. All rights reserved.
//

import Foundation

class Artist {
    
    private var name = String();
    private var song = String();
    private var album = String();
    private var description = String();
    
    init(){
        
    }
    
    init(name: String, song: String, album: String, description: String){
        self.name = name;
        self.song = song;
        self.album = album;
        self.description = description
    }
    
    func setNome(name : String){
        self.name = name;
    }
    
    func setSong(song: String){
        self.song = song;
    }
    
    func setAlbum(album: String){
        self.album = album;
    }
    
    func setDescription(description: String){
        self.description = description;
    }
    
    func getName() -> String{
        return name;
    }
    
    func getSong() -> String{
        return song;
    }
    
    func getAlbum() -> String{
        return album;
    }
    
    func getDescription() -> String{
        return description;
    }
}

class ArtistDAO{
    static func getArtists() -> [Artist]{
        
        return [
            Artist(name:"Arctic Monkeys", song:"Dancing Shoes", album: "What people say..",
                   description: "Adicione aqui uma descricao para Arctic Monkeys"),
            Artist(name:"Sia", song:"The Greatest", album: "This Is Acting",
                   description: "Adicione aqui uma descricao para Sia"),
            Artist(name:"Alt-J", song:"breezeblocks", album: "Alt-j",
                   description: "Adicione aqui uma descricao para Alt-j"),
            Artist(name:"The weeknd", song:"Hills", album: "The weeknd",
                   description: "Adicione aqui uma descricao para The Weeknd"),
            Artist(name:"Mura masa", song:"lovesick", album:"To Fall Out of Love To",
                   description: "Adicione aqui uma descricao para Mura masa")
        ];
    }
    
    
}
