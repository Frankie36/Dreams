//
//  Dream+CoreDataProperties.swift
//  Dreamz
//
//  Created by Francis Ngunjiri on 23/10/2019.
//  Copyright © 2019 Francis Ngunjiri. All rights reserved.
//
//

import Foundation
import CoreData


extension Dream {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dream> {
        return NSFetchRequest<Dream>(entityName: "Dream")
    }

    @NSManaged public var date: Date?
    @NSManaged public var details: String?
    @NSManaged public var tag: String?
    @NSManaged public var title: String?

}
