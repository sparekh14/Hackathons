//
//  PastJournal.swift
//  PennApps
//
//  Created by Aditya Shirodkar on 3/19/22.
//

import SwiftUI
import Firebase

struct PastJournal: View {
    
    @State var isLinkActive = false
    var body: some View {
        ZStack{
            let skyBlue = Color(red: 0.670, green: 0.984, blue: 0.999)
            let darkBlue = Color(red: 0.047, green: 0, blue: 0.67)
            skyBlue
                .ignoresSafeArea()
            NavigationLink(destination: pastDetail(), isActive: $isLinkActive){
            Button("3/17/22 at 7:00 PM") {
                self.isLinkActive = true
            }
            .font(.headline)
            .frame(minWidth: 0, maxWidth:300, minHeight: 0, maxHeight: 50)
            .font(.system(size: 18))
            .background(darkBlue)
            .cornerRadius(25)
            .padding()
            .foregroundColor(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.white, lineWidth: 2)
            )
            }
            .padding(.bottom, 600.0)
            NavigationLink(destination: pastDetail(), isActive: $isLinkActive){
            Button("3/17/22 at 7:00 AM") {
                self.isLinkActive = true
            }
            .font(.headline)
            .frame(minWidth: 0, maxWidth:300, minHeight: 0, maxHeight: 50)
            .font(.system(size: 18))
            .background(darkBlue)
            .cornerRadius(25)
            .padding()
            .foregroundColor(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.white, lineWidth: 2)
            )
            }
            .padding(.bottom, 300.0)
            
            NavigationLink(destination: pastDetail(), isActive: $isLinkActive){
            Button("3/16/22 at 7:00 AM") {
                self.isLinkActive = true
            }
            
            .font(.headline)
            .frame(minWidth: 0, maxWidth:300, minHeight: 0, maxHeight: 50)
            .font(.system(size: 18))
            .background(darkBlue)
            .cornerRadius(25)
            .padding()
            .foregroundColor(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.white, lineWidth: 2)
            )
                
            }
            
            NavigationLink(destination: pastDetail(), isActive: $isLinkActive){
            Button("3/15/22 at 12:00 PM") {
                self.isLinkActive = true
            }
            .font(.headline)
            .frame(minWidth: 0, maxWidth:300, minHeight: 0, maxHeight: 50)
            .font(.system(size: 18))
            .background(darkBlue)
            .cornerRadius(25)
            .padding()
            .foregroundColor(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.white, lineWidth: 2)
            )
            }
            .padding(.top, 300.0)
            NavigationLink(destination: pastDetail(), isActive: $isLinkActive){
            Button("3/14/22 at 9:00 PM") {
                self.isLinkActive = true
            }
            .font(.headline)
            .frame(minWidth: 0, maxWidth:300, minHeight: 0, maxHeight: 50)
            .font(.system(size: 18))
            .background(darkBlue)
            .cornerRadius(25)
            .padding()
            .foregroundColor(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.white, lineWidth: 2)
            )
            }
            .padding(.top, 600.0)
             
            
            
        }
            
        }
    }



struct PastJournal_Previews: PreviewProvider {
    static var previews: some View {
        PastJournal()
    }
}
