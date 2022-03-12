//
//  FormView.swift
//  Test Swift UI
//
//  Created by Mnet on 12/03/2022.
//

import SwiftUI
// With Controls
struct FormView:View {
    @State private var isToggleOn = false
    @State private var textFieldData = ""
    
    var body: some View {
        Form {
            Section(header: SectionTextAndImage(name:"Form Controls", image: "")) {
            }
            
            Section {
                Button(action: {print("Button pressed")}, label: {
                    Text("Button")
                })
                Toggle(isOn: $isToggleOn) {
                    Text("Toggle")
                }
                TextField("Insert some sample", text: $textFieldData)
                Text(textFieldData)
                
            }
            
            
        }
    }
}
// Code for Displaying only information like table view (NO INPUT)

// State variables are to be bound by using $

//struct FormView: View {
//
//    var body: some View {
//
//        Form{
//            Section(header: SectionTextAndImage(name: "People", image: "person.2.square.stack.fill")){
//
//                Text("Sample Section")
//                    .font(.title)
//                Text("This is form1")
//                Text("This is form2")
//
//            }
//
//            Section(header:Text("HEADER FOR SECTION 2")) {
//                Text("Sample Section 2")
//                    .font(.title)
//                Text("This is form1")
//                Text("This is form2")
//                Color.purple
//            }
//
//            Section(header:Text("Example for Indentations")) {
//                Text("Indentation Example 1")
//                    .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
//
//            }
//
//
//
//
//        }
//
//    }
//}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}

struct SectionTextAndImage: View {
    var name: String
    var image: String
    var body: some View {
        HStack {
            Image(systemName: image).padding(.trailing)
            Text(name)
        }
        .padding()
        .font(.title)
        .foregroundColor(Color.purple)
    } }


// MARK: - NOTES
//

// If you want to use custom func use list or vstack, for default func use formView
//    The Form view is a great choice when you want to show settings, options, or get some user input. It is easy to set up and customize as you will see on the following pages.

//Forms and Lists allow you to set a background view with a function called
//\"listRowBackground(view:


