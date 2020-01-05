//
//  SwiftUIView.swift
//  CourseSniper
//
//  Created by Kirtan Patel on 1/4/20.
//  Copyright © 2020 Kirtan Patel. All rights reserved.
//

import SwiftUI

struct CourseListView: View {
        
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
    }
        
    @ObservedObject var networkManager: CourseNetworkManager = CourseNetworkManager(subject: CurrentUserData.course)
    
    var body: some View {
            List(networkManager.courses, id: \.courseNumber){ course in

                Text(course.title.lowercased().capitalized)
            }.navigationBarTitle(Text("Courses").foregroundColor(Color.red))
    }
}

struct CourseListView_Previews: PreviewProvider {
    static var previews: some View {
        CourseListView()
    }
}
