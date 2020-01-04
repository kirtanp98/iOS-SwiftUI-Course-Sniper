//
//  Course.swift
//  CourseSniper
//
//  Created by Kirtan Patel on 1/4/20.
//  Copyright © 2020 Kirtan Patel. All rights reserved.
//

import Foundation

struct Course: Identifiable {
    var id: Int
    var courseId: Int
    var name: String
    var credits: Int
    var sections: Int
    var closeSections: Int
    var openSections: Int {
        return sections - closeSections
    }
    var sectionList: [Section]
}

struct Section: Identifiable {
    var id: Int
    var sectionNumber: Int
    var prof: String
    
}
