//
//  CirculeGroupView.swift
//  Project_1
//
//  Created by Mac on 12/02/2022.
//

import SwiftUI

struct CirculeGroupView: View {
    // MARK: -
    @State var ShapeColor   : Color
    @State var ShapeOpacity : Double
    
    // MARK: -
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity),lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity),lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
    }
}

struct CirculeGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color("BlueColor")
                .ignoresSafeArea(.all, edges: .all)
            CirculeGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
