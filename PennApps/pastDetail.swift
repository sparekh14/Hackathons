//
//  pastDetail.swift
//  PennApps
//
//  Created by Aditya Shirodkar on 3/19/22.
//

import SwiftUI

struct pastDetail: View {
    var body: some View {
        ZStack{
            let skyBlue = Color(red: 0.670, green: 0.984, blue: 0.999)
            
            skyBlue
                .ignoresSafeArea()
            
            HStack{
            Text("Date: 3/17/22")
            Text("Time: 7:00 AM")
            }
            .padding(.bottom, 600.0)
            VStack{
                Text("Rating: 7/10")
                Section(header:Text("What Went Good:")){
               
                Text("I woke up somewhat late today, but I got ready on time. Gym was really easy today, and my math test went pretty well! My science test also went well, so I am not as stressed today")
                }
                .padding(.horizontal)
                .padding()
                
                
                Section(header: Text("What Didn't Go Well")){
                Text("I had a lot of anxiety about my tests today, but I was able to manage it in a calm and practiced manner.")
                } .padding(.horizontal)
                .padding()
                
                
                Section(header: Text("What Can You Improve On")){
                Text("I think I've improved on handling my nerves, but I think I can still work on not panicking over hypothetical events our outcomes.")
                }.padding(.horizontal)
                .padding()
            }
            
                                
            
    }
}
}

struct pastDetail_Previews: PreviewProvider {
    static var previews: some View {
        pastDetail()
    }
}
