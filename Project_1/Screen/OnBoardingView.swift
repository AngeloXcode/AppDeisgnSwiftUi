//
//  OnBoardingView.swift
//  Project_1
//
//  Created by Mac on 12/02/2022.
//

import SwiftUI

/// <#Description#>
struct OnBoardingView: View {
    
    /// Variables
    @AppStorage("onBoading") var isOnboardingViewActive : Bool = true
    /// Start of View
    var body: some View {
        ZStack{
            Color("BlueColor")
                .ignoresSafeArea(.all,edges: .all)
            VStack(spacing:20){
               // mark - Mark
                // MARK: - Header
                VStack(spacing:0){
                    Spacer()
                    Text("Share .")
                        .font(.system(size:60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                         It'sn't Orlem is a neighbourhood in Malad, a suburb of .
                         """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal,10)
                }
                Spacer()
                // MARK: - Center
                ZStack{
                    CirculeGroupView(ShapeColor: .white, ShapeOpacity:0.2)
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }//: Center
                Spacer()
             
                // MARK: - Footer
                ZStack{
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    
                    Text("Get Started ")
                        .font(.system(.title3,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x:20)
                    
                //Capsule for button
                    HStack{
                        Capsule()
                            .fill(Color("OrangeColor"))
                            .frame(width: 80)
                        
                        Spacer()
                    }
                    
                    //Circle
                    HStack{
                        ZStack{
                            Circle().fill(Color("OrangeColor"))
                            Circle().fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right")
                                .font(.system(size: 24, weight: .bold))
                        }.foregroundColor(.white)
                         .frame(width: 80, height: 80, alignment: .center)
                         .onTapGesture {
                             self.isOnboardingViewActive = false
                         }
                        
                        Spacer()
                    } //:HStack
                    
                    
                        
                }//: End of Footer
                .frame(height: 80, alignment: .center)
                .padding()
              
            }
        }//end of ZStack
  
    }// end of view
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
