    //
    //  ContentView.swift
    //  ToDoListApp
    //
    //  Created by Mark Trance on 5/3/23.
    //

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewVM()
    
    var body: some View {
        VStack {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                // signed In
                ToDoListView()
            } else {
                LogInView()
            }
            
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
