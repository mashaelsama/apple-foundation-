//
//  SplashView.swift
//  test4
//
//  Created by Afrah Saleh on 05/07/1444 AH.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                login()
            } else {
                Color("back")
                    .ignoresSafeArea()
             
                Circle()
                    .fill(Color("Color6").opacity(4))
                    .frame(width: 700, height: 700)
                    .position(x: 30, y:500)
                    .blur(radius: 90)
                Circle()
                    .fill(Color("Color4"))
                    .frame(width: 1200, height: 700)
                    .position(x: 10, y:150)
                    .blur(radius: 15)
                Circle()
                    .fill(Color("Color5"))
                    .frame(width: 600, height: 700)
                    .position(x: 400, y:100)
                    .blur(radius: 10)
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500, height: 600)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
        
}



struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
