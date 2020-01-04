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
    
    var body: some View {
        NavigationView {
            List{
                Text("aasd")
                Text("aasd")
                Text("aasd")

            }.navigationBarTitle(Text("Subjects").foregroundColor(Color.red))
        }
    }
}

struct CourseListView_Previews: PreviewProvider {
    static var previews: some View {
        CourseListView()
    }
}
