//
//  ContentView.swift
//  Project_1
//
//  Created by Mac on 11/02/2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onBoading") var isOnboardingViewActive : Bool = true
    var body: some View {
        if isOnboardingViewActive{
            OnBoardingView()
        }else{
            HomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
