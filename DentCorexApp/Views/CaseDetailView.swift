import SwiftUI

struct CaseDetailView: View {
    var dentalCase: DentalCase

    var body: some View {
        List {
            Section(header: Text("Case Info")) {
                HStack {
                    Text("Patient")
                    Spacer()
                    Text(dentalCase.patientName)
                }
                HStack {
                    Text("Doctor")
                    Spacer()
                    Text(dentalCase.doctor)
                }
                HStack {
                    Text("Type")
                    Spacer()
                    Text(dentalCase.type)
                }
                HStack {
                    Text("Due Date")
                    Spacer()
                    Text(dentalCase.dueDate, style: .date)
                }
            }
            Section(header: Text("Workflow")) {
                ForEach(dentalCase.steps) { step in
                    HStack {
                        Text(step.title)
                        Spacer()
                        Text(step.status.rawValue.capitalized)
                            .foregroundColor(step.status == .completed ? .green : .primary)
                    }
                }
            }
        }
        .navigationTitle("Case Details")
    }
}
