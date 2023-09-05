//
//  newJournal.swift
//  PennApps
//
//  Created by Annika Santhanam on 3/18/22.
//

import SwiftUI

struct newJournal: View {
    
    @ObservedObject var model = ViewModel()
    var username = ""
    @State private var showingAlert = false
    
    
    //user data vars
    
    @State var text: String = ""
    
    
    @State var text2: String = ""
    

    
    @State var text3: String = ""

    @State var rating : Int = 0
    @State var journalDate : Date = Date.init(timeIntervalSinceReferenceDate: 0)
    
    let date = Date()

    // Create Date Formatter
    let dateFormatter = DateFormatter()


    var body: some View {
        let skyBlue = Color(red: 0.670, green: 0.984, blue: 0.999)
            ZStack{
            skyBlue
                .ignoresSafeArea()
        ScrollView{
            DatePicker(selection: $journalDate, label: { Text("Date and Time")
                .multilineTextAlignment(.center) })
                .padding(.horizontal, 38.0)
            
            HStack{
                Text("On a scale from 1-10, how did today go?")
                    .font(.caption)
                    .fontWeight(.black)
                    .multilineTextAlignment(.leading)
                    .padding()
            Picker(selection: $rating, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
                Text("6").tag(6)
                Text("7").tag(7)
                Text("8").tag(8)
                Text("9").tag(9)
                Text("10").tag(10)
            }
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
            }
            .padding(.trailing)
            
            Section(header: Text("What went well today?")){
            TextEditor(text: $text)
                .frame(width: 300.0, height: 200.0)
                .foregroundColor(.secondary)
                .padding([.leading, .bottom, .trailing], 40.0)
                .navigationTitle("Enter your thoughts")
            }
            Section(header: Text("What didn't go well today?")){

            TextEditor(text: $text2)
                .frame(width: 300.0, height: 200.0)
                .foregroundColor(.secondary)
                .padding([ .leading, .trailing,.bottom], 40.0)
                .navigationTitle("Enter your thoughts")
            }
            
            Section(header: Text("What can you work on to make tomorrow better?")){
            TextEditor(text: $text3)
                .frame(width: 300.0, height: 200.0)
                .foregroundColor(.secondary)
                .padding([.leading, .trailing], 40.0)
                .navigationTitle("Enter your thoughts")
            
            }
            HStack{
                

                Button(action: {}) {
                    Text("Save and Exit")
                        
                }
                
    
                
                Button("Submit!"){
                    showingAlert = true
                }
                .alert(isPresented:$showingAlert){
                    Alert(title: Text("Journal completed!"), message: Text( "Tomorrow's a new day to go out and make a difference!"), dismissButton: .destructive(Text("OK")))
                }
                
                
                
                
                
            
            }
            
        }
        
        }
    }
    


    
    
    func submitData() {
        // Set Date Format
        dateFormatter.dateFormat = "'Date: 'MM-dd-yyyy' Time: 'HH:mm"

        // Convert Date to String
        
        model.addJournal(username: ContentView().username, journalName: dateFormatter.string(from: journalDate), wentWell: text, didntGoWell: text2, workOn: text3, rating: rating)
    }
    
    init() {
        model.getLoginData()
    }
}

struct newJournal_Previews: PreviewProvider {
    static var previews: some View {
        newJournal()
    }
}
