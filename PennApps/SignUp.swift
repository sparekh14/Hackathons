//
//  SignUp.swift
//  PennApps
//
//  Created by Aditya Shirodkar on 3/19/22.
//

import SwiftUI
import Firebase

struct SignUp: View {
    @State var username = ""
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    @State var phoneNumber = ""
    @State var isLinkActive = false
    @ObservedObject var model = ViewModel()

    var body: some View {
        NavigationView {
            
            let skyBlue = Color(red: 0.670, green: 0.984, blue: 0.999)
            ZStack {
                skyBlue
                    .ignoresSafeArea()
                VStack {
                    Text("Make an Account!").font(.largeTitle).fontWeight(.semibold).multilineTextAlignment(.center).lineLimit(nil).padding(.top, -55)
                    
                    TextField("First Name", text: $firstName).disableAutocorrection(true)
                        .frame(width: 200.0)
                        .multilineTextAlignment(.center)
                    
                        .padding(.all, 26.0)
                        .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4).padding(5)
                    
                    TextField("Last Name", text: $lastName).disableAutocorrection(true)
                        .frame(width: 200.0)
                        .multilineTextAlignment(.center)
                    
                        .padding(.all, 26.0)
                        .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4).padding(5)
                    
                    TextField("Username", text: $username).disableAutocorrection(true)
                        .frame(width: 200.0)
                        .multilineTextAlignment(.center)
                    
                        .padding(.all, 26.0)
                        .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4).padding(5)
                    
                    TextField("Password", text: $password).disableAutocorrection(true)
                        .frame(width: 200.0)
                        .multilineTextAlignment(.center)
                    
                        .padding(.all, 26.0)
                        .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4).padding(5)
                    
                    TextField("Email", text: $email).disableAutocorrection(true)
                        .frame(width: 200.0)
                        .multilineTextAlignment(.center)
                    
                        .padding(.all, 26.0)
                        .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4).padding(5)
                    
                    TextField("Phone Number", text: $phoneNumber).disableAutocorrection(true)
                        .frame(width: 200.0)
                        .multilineTextAlignment(.center)
                        .padding(.all, 26.0)
                    
                        .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4).padding(5)
                    
                    NavigationLink(destination: Home(username: $username), isActive: $isLinkActive) {
                        Button(action: {
                            submitData()
                            self.isLinkActive = true
                        }) {
                            Text("Create an Account!")
                        }.padding(20)
                    }
                }
            }
        }.navigationBarHidden(true)
    }
    
    
    
    init() {
        model.getLoginData()
    }
    
    func submitData() {
        model.addUser(username: username, password: password, firstName: firstName, lastName: lastName, email: email, phoneNumber: phoneNumber)
    }
    
}



struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
