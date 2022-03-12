//
//  DatePickerView.swift
//  Test Swift UI
//
//  Created by Mnet on 12/03/2022.
//

import SwiftUI

struct DatePickerView: View {
    @State private var arrivalDate = Date()
    let mainColor = Color("LightPinkColor")
    var body: some View {

        VStack(spacing:20) {
            
            Text("DatePicker")
                .font(.largeTitle)
            Text("To Date or Time")
                .foregroundColor(.gray)
            Text("You can set a maximum date or time that you cannot go past with the date")
                .frame(maxWidth: .infinity)
                .padding().background(mainColor)
            Text("Date and Time of Birth")
            // ... in represents end date.
            DatePicker("", selection: $arrivalDate, in: ...Date(), displayedComponents: [.date,.hourAndMinute])
                .padding(.horizontal)
                .labelsHidden()
            Text("Selected Date is \(arrivalDate)")
            
        }

    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
