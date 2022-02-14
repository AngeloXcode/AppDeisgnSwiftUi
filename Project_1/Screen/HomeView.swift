//
//  HomeView.swift
//  Project_1
//
//  Created by Mac on 12/02/2022.
//

import SwiftUI

struct HomeView: View {
    
    /// Variables
    @AppStorage("onBoading") var isOnboardingViewActive : Bool = false
    /// Start of View
    var body: some View {
        VStack(spacing:20){
            // MARK: - Header
            
            Spacer()
            ZStack {
                CirculeGroupView(ShapeColor: .gray, ShapeOpacity:0.2)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            
            // MARK: - Center
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            // MARK: - Footer
            Spacer()
            if #available(iOS 15.0, *) {
                Button {
                    self.isOnboardingViewActive = true
                } label: {
                    Image(systemName: "arrow.clockwise.heart.fill")
                        .imageScale(.large)
                    Text("Restart")
                        .font(.system(.title3,design: .rounded))
                        .fontWeight(.bold)
                } // : Button
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            } else {
                // Fallback on earlier versions
                
                Button {
                    self.isOnboardingViewActive = true
                } label: {
                    Image(systemName: "arrow.clockwise.heart.fill")
                        .imageScale(.large)
                    Text("Restart")
                        .font(.system(.title3,design: .rounded))
                        .fontWeight(.bold)
                } // : Button
            }

            
        }
        
    }// end of view
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
