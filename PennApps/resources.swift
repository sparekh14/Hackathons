//
//  resources.swift
//  PennApps
//
//  Created by Aditya Shirodkar on 3/19/22.
//

import SwiftUI

struct resources: View {
    var body: some View {
        ZStack{
            let skyBlue = Color(red: 0.670, green: 0.984, blue: 0.999)
            
            
            List {
                
                Section(header: Text("Resources")
                            .font(.title)
                            .fontWeight(.heavy)){
                Text("https://www.mentalhealth.gov/basics/what-is-mental-health")
                Text("https://www.cdc.gov/mentalhealth/learn/index.htm")
                Text("https://www.mentalhealthfirstaid.org/")
                Text("https://www.nimh.nih.gov/")
                Text("https://www.nami.org/About-Mental-Illness/Mental-Health-Conditions")
                Text("https://www.mhanj.org/")
                Text("https://medlineplus.gov/mentalhealth.html")
                Text("https://www.psychologytoday.com/us/psychiatrists/intuitive-behavioral-inc-hazlet-nj/383648")
                Text("https://www.hackensackmeridianhealth.org/en/Locations/Center-for-Behavioral-Health-JFK")
                Text("https://www.psychologytoday.com/us/therapists/princetta-a-edwards-plainfield-nj/21961")
                }
            }
        }
    }
}

struct resources_Previews: PreviewProvider {
    static var previews: some View {
        resources()
    }
}
