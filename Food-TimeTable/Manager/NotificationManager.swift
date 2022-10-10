//
//  NotificationManager.swift
//  Food-TimeTable
//
//  Created by Prakhar Parakh on 17/09/22.
//

import Foundation
//import UserNotifications
//
//class NotificationManager{
//
//    init(){
//        askperm()
//    }
//    
//    func askperm(){
//        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) { success, error in
//            if  let error = error{
//                print(error.localizedDescription)
//            }
//            else{
//                print("Success")
//                self.sendnoti()
//            }
//        }
//    }
//    
//    func sendnoti(){
//        var dateComponents = DateComponents()
//        dateComponents.calendar = Calendar.current
//        dateComponents.weekday = 7  // Tuesday
//        dateComponents.hour = 12    // 14:00 hours
//        dateComponents.minute = 29
//        // Create the trigger as a repeating event.
//        let trigger = UNCalendarNotificationTrigger(
//                 dateMatching: dateComponents, repeats: false)
//        let content = UNMutableNotificationContent()
//        content.title = "Lunch"
//        content.body = "\(FireStoreManager)"
//        
//        let uuidString = UUID().uuidString
//        let request = UNNotificationRequest(identifier: uuidString,
//                    content: content, trigger: trigger)
//
//        // Schedule the request with the system.
//        let notificationCenter = UNUserNotificationCenter.current()
//        notificationCenter.add(request) { (error) in
//           if error != nil {
//              print("Error")
//           }
//        }
//    }
//}
