//
//  ContentView.swift
//  Madd9145
//
//  Created by Eshwar Naik Bhukya on 2023-01-29.
//

import SwiftUI



struct ContentView: View {
    @State private var Temp = ""
    @State private var Pressure = ""
    @State private var RecDate = Date()
    @State private var Notify = false
    @State private var numberOfDamage = 1
    
    
    
    var body: some View {
        NavigationView{
        Form {
            
            Section(header: Text("Chiller Equipment - 1")){
                TextField("Temperature (C/F)", text: $Temp)
                TextField(" Pressure", text: $Pressure)
                DatePicker("Date of Record", selection: $RecDate, displayedComponents: .date)
            }
            Section(header: Text("Report")) {
                Toggle("Send Notification to Head", isOn: $Notify)
                Stepper ("Number of Damages", value: $numberOfDamage, in: 1...100)
                Text("This Equipment has \(numberOfDamage) Damages")
            }
        }
        .navigationTitle("Madd9145")
        .toolbar {
            Button("Save", action: saveUser)
        }
        }
       
    }
}
func saveUser () {
    print ("User Saved")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
