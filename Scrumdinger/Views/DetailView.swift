//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Kuziboev Siddikjon on 19/05/23.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List {
            Section(header: Text("Meeting info")) {
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meetong", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendes")) {
                ForEach(scrum.attendees) { attende in
                    Label(attende.name, systemImage: "person")
                }
                
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
