//
//  SwiftUIView.swift
//  CourseSniper
//
//  Created by Kirtan Patel on 1/4/20.
//  Copyright © 2020 Kirtan Patel. All rights reserved.
//

import SwiftUI

struct SubjectListView: View {
    
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
    }
    
    @ObservedObject var networkManager: NetworkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.subjects, id: \.code){ subject in
                NavigationLink(destination: LazyView(CourseListView())){
                   Text(subject.description.lowercased().capitalized)
                }
                
            }.navigationBarTitle(Text("Subjects").foregroundColor(Color.red))
        }
    }
}

struct SubjectListView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectListView()
    }
}
