import SwiftUI

struct WorkerStepView: View {
    @Binding var step: CaseStep

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(step.title)
                .font(.headline)
            Picker("Status", selection: $step.status) {
                Text("Pending").tag(CaseStep.StepStatus.pending)
                Text("In Progress").tag(CaseStep.StepStatus.inProgress)
                Text("Completed").tag(CaseStep.StepStatus.completed)
            }
            .pickerStyle(.segmented)
            TextField("Notes", text: Binding(
                get: { step.notes ?? "" },
                set: { step.notes = $0 }
            ))
            .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}
