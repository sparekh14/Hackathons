//
//  Home.swift
//  PennApps
//
//  Created by Annika Santhanam on 3/18/22.
//

import SwiftUI

struct Home: View {
    @State var isLinkActive = false
    @State var isLinkActive2 = false
    @State var isLinkActive3 = false

    
    @Binding var username: String
    //@State var username1 = ""
    
    
    var body: some View {
        NavigationView{
            ZStack{
                let skyBlue = Color(red: 0.670, green: 0.984, blue: 0.999)
                let darkBlue = Color(red: 0.047, green: 0, blue: 0.67)
                skyBlue
                    .ignoresSafeArea()
                
                VStack{
                    Text("Hey, \(self.username)!").font(.largeTitle).fontWeight(.semibold).multilineTextAlignment(.center).lineLimit(nil).padding(.top, -150.0)
                    NavigationLink(destination: newJournal(), isActive: $isLinkActive) {
                        Button(action: {
                            self.isLinkActive = true
                            
                        }) {
                            Text("New Journal Entry")
                                .font(.largeTitle)
                                .frame(minWidth: 0, maxWidth: 300)
                                .font(.system(size: 18))
                                .padding()
                                .foregroundColor(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }}
                        .background(darkBlue)
                        .cornerRadius(25)
                    
                    
                    Spacer()
                        .frame(width: 50.0, height: 100.0)
                    
                    NavigationLink(destination: PastJournal(), isActive: $isLinkActive2) {
                        Button(action: {self.isLinkActive2 = true}) {
                            Text("Past Journals")
                                .font(.largeTitle)
                                .frame(minWidth: 0, maxWidth: 300)
                                .font(.system(size: 18))
                                .padding()
                                .foregroundColor(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }}        .background(darkBlue)
                        .cornerRadius(25)
                    Spacer()
                        .frame(width: 50.0, height: 100.0)
                    NavigationLink(destination: resources(), isActive: $isLinkActive3){
                    Button(action: {self.isLinkActive3 = true}) {
                        Text("Find Resources")
                            .font(.largeTitle)
                            .frame(minWidth: 0, maxWidth: 300)
                            .font(.system(size: 18))
                            .padding()
                            .foregroundColor(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    .background(darkBlue)
                    .cornerRadius(25)
                }
                
                
                }
                
                
            }
            
        }.navigationBarHidden(true)
    }
    
}
    /*struct Home_Previews: PreviewProvider {
     static var previews: some View {
     // Home()
     }
     }*/
