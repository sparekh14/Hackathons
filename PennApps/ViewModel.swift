//
//  ViewModel.swift
//  PennApps
//
//  Created by Aditya Shirodkar on 3/19/22.
//

import Foundation
import Firebase

class ViewModel: ObservableObject {
    @Published var list = [User]()
    @Published var list2 = [Journal]()
    
    func addJournal(username : String, journalName : String, wentWell : String, didntGoWell : String, workOn : String, rating: Int) {
        let db = Firestore.firestore()

        db.collection("Journal").addDocument(data: ["username":username, "journalName": journalName, "wentWell":wentWell, "didntGoWell":didntGoWell, "workOn":workOn, "rating":rating]) { error in
            if error == nil {
                self.getJournalData()
            } else {
                
            }
        }
    }
    func addUser(username:String, password:String, firstName: String, lastName: String, email: String, phoneNumber: String) {
        let db = Firestore.firestore()

        db.collection("Login Info").addDocument(data: ["username":username, "password": password, "firstName":firstName, "lastName":lastName, "email":email, "phoneNumber":phoneNumber]) { error in
            if error == nil {
                self.getLoginData()
            } else {
                
            }
        }
    }
    
    func getJournalData() {
        //Get a reference to the database
        let db = Firestore.firestore()
        //read the documents at a specific path
        db.collection("Journal").getDocuments { snapshot, error in
            if error == nil {
                if let snapshot = snapshot {
                    DispatchQueue.main.async{
                        self.list2 = snapshot.documents.map { d in
                            //return Journal(id: d.documentID, password: d["password"] as? String ?? "", JournalID)
                            return Journal(id: d.documentID, username: d["username"] as? String ?? "", journalName: d["journalName"] as? String ?? "", wentWell: d["wentWell"] as? String ?? "", didntGoWell: d["didntGoWell"] as? String ?? "", workOn: d["workOn"] as? String ?? "", rating: d["rating"] as? Int ?? -1)
                        }
                    }
                }
            } else {
                
            }
        }
    }
    
    func getLoginData() {
        //Get a reference to the database
        let db = Firestore.firestore()
        //read the documents at a specific path
        db.collection("Login Info").getDocuments { snapshot, error in
            if error == nil {
                if let snapshot = snapshot {
                    DispatchQueue.main.async{
                        self.list = snapshot.documents.map { d in
                            //return Journal(id: d.documentID, password: d["password"] as? String ?? "", JournalID)
                            return User(id: d.documentID, username: d["username"] as? String ?? "", password: d["password"] as? String ?? "", email: d["email"] as? String ?? "", phoneNumber: d["phoneNumber"] as? String ?? "", firstName: d["firstName"] as? String ?? "", lastName: d["lastName"] as? String ?? "")
                        }
                    }
                }
            } else {
                
            }
        }
    }
}
