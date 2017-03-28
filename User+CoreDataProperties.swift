//
//  User+CoreDataProperties.swift
//  musicNavBar
//
//  Created by Student on 3/28/17.
//  Copyright © 2017 Rafael Albuquerque. All rights reserved.
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User");
    }

    @NSManaged public var avaliacao: Float
    @NSManaged public var descricao: String?
    @NSManaged public var email: String?
    @NSManaged public var foto: String?
    @NSManaged public var nome: String?
    @NSManaged public var profissao: String?
    @NSManaged public var senha: String?
    @NSManaged public var tipo: String?

}
