//
//  ContentView.swift
//  PennApps
//
//  Created by Annika Santhanam on 3/18/22.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State var isLinkActive = false
    @State var isLinkActive2 = false
    @State var username = ""
    @State var password = ""
    @ObservedObject var model = ViewModel()
    
    
    var body: some View {
        NavigationView{
            let skyBlue = Color(red: 0.670, green: 0.984, blue: 0.999)
            
            ZStack{
                skyBlue
                    .ignoresSafeArea()
                
                
                Image("logo-1")
                    .resizable(capInsets: EdgeInsets(top: 300.0, leading: 355.0, bottom: 200.0, trailing: 200.0), resizingMode: .tile)
                    .aspectRatio(contentMode: .fill)
                    .padding(.top, 10.0)
                    .padding([.leading, .bottom, .trailing], 500.0)
                    .frame(width: 100.0, height: 100.0)
                VStack {
                    Text("Welcome! Please enter your login information:").font(.largeTitle).fontWeight(.semibold).multilineTextAlignment(.center).lineLimit(nil).padding(.top, 250.0)
                    
                    TextField("Username", text: $username).disableAutocorrection(true)
                        .frame(width: 200.0)
                        .multilineTextAlignment(.center)
                    
                        .padding(.all, 26.0)
                        .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4)
                    
                    
                    TextField("Password", text: $password).disableAutocorrection(true)
                        .frame(width: 200.0)
                        .multilineTextAlignment(.center)
                        .padding(.all, 26.0)
                    
                        .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4)
                        .padding()
                    
                    NavigationLink(destination: Home(username: self.$username), isActive: $isLinkActive) {
                        Button(action: {
                            for item in model.list {
                                if(item.password == password && item.username == username) {
                                    self.isLinkActive = true
                                    break
                                }
                            }
                        }) {
                            Text("Log in!")
                        }
                    }
                    
                    NavigationLink(destination: SignUp(), isActive: $isLinkActive2) {
                        Button(action: {
                            self.isLinkActive2 = true
                            //writerForSecondView = Writer(var writerForSecondView = Writer(username123: "")
                        }) {
                            Text("Don't have an account? Create one!")
                        }
                    }.padding(1)
                    
                }
                
            }
            
        }.navigationBarHidden(true)
    }
   
    init() {
        model.getLoginData()
    }
    
    struct Writer {
        var username123: String
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
