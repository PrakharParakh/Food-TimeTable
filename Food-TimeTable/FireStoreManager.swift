//
//  FireStoreManager.swift
//  Food-TimeTable
//
//  Created by Prakhar Parakh on 16/09/22.
//

import Foundation
import Firebase
import UserNotifications



class FireStoreManager: ObservableObject {
    init(){
        getdate()
    }
    
    @Published var Breakfast:String = " "
    @Published var Lunch:String = " "
    @Published var Snacks:String = " "
    @Published var Dinner:String = " "
    @Published var dayInWeek:String = " "
    
    

    func getdate(){
        
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        dayInWeek = dateFormatter.string(from: date)
        getdata()
    }
    
    func getdata(){
        let db = Firestore.firestore()
        let ref = db.collection("Weeks").document("\(dayInWeek)")
        
        ref.getDocument { document, error in
            guard error == nil else{
                print(error!.localizedDescription)
                return
            }
            if let document = document,document.exists{
               let data = document.data()
                if let data = data{
                    self.Breakfast = data["BreakFast"]as? String ?? ""
                    self.Lunch = data["Lunch"]as? String ?? ""
                    self.Snacks = data["Snacks"]as? String ?? ""
                    self.Dinner = data["Dinner"]as? String ?? ""
                    self.askperm()

                }
            }
        }
        
        
    }
    
    
    
    func askperm(){
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) { [self] success, error in
            if  let error = error{
                print(error.localizedDescription)
            }
            else{
                print("Success")
                self.breakfast()
                self.lunch()
                self.snacks()
                self.dinner()
            }
        }
    }
    
    func breakfast(){
        
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = 6    // 14:00 hours
        dateComponents.minute = 30
        // Create the trigger as a repeating event.
        let trigger = UNCalendarNotificationTrigger(
                 dateMatching: dateComponents, repeats: false)
        let content = UNMutableNotificationContent()
        content.title = "BreakFast"
        content.body = "\(self.Breakfast)"
        
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString,
                    content: content, trigger: trigger)

        // Schedule the request with the system.
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.add(request) { (error) in
           if error != nil {
              print("Error")
           }
        }
    }
    func lunch(){
        
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = 11    // 14:00 hours
        dateComponents.minute = 0
        // Create the trigger as a repeating event.
        let trigger = UNCalendarNotificationTrigger(
                 dateMatching: dateComponents, repeats: false)
        let content = UNMutableNotificationContent()
        content.title = "Lunch"
        content.body = "\( self.Lunch)"
        
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString,
                    content: content, trigger: trigger)

        // Schedule the request with the system.
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.add(request) { (error) in
           if error != nil {
              print("Error")
           }
        }
    }
    func snacks(){

        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = 16   // 14:00 hours
        dateComponents.minute = 0
        // Create the trigger as a repeating event.
        let trigger = UNCalendarNotificationTrigger(
                 dateMatching: dateComponents, repeats: false)
        let content = UNMutableNotificationContent()
        content.title = "Snacks"
        content.body = "\(self.Snacks)"
        
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString,
                    content: content, trigger: trigger)

        // Schedule the request with the system.
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.add(request) { (error) in
           if error != nil {
              print("Error")
           }
        }
    }
    func dinner(){
        
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = 19    // 14:00 hours
        dateComponents.minute = 0
        // Create the trigger as a repeating event.
        let trigger = UNCalendarNotificationTrigger(
                 dateMatching: dateComponents, repeats: false)
        let content = UNMutableNotificationContent()
        content.title = "Dinner"
        content.body = "\(self.Dinner)"
        
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString,
                    content: content, trigger: trigger)

        // Schedule the request with the system.
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.add(request) { (error) in
           if error != nil {
              print("Error")
           }
        }
    }
    
    
}
