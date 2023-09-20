//
//  Task+CoreDataProperties.swift
//  CodeBased-Todo-App
//
//  Created by daelee on 2023/09/20.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var title: String?
    @NSManaged public var isCompleted: Bool
    @NSManaged public var modifyDate: Date?
    @NSManaged public var createDate: Date?

}

extension Task : Identifiable {

}
