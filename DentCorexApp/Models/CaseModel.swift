import Foundation

struct CaseStep: Identifiable {
    let id = UUID()
    var title: String
    var assignedWorker: String
    var status: StepStatus
    var startTime: Date?
    var endTime: Date?
    var notes: String?

    enum StepStatus: String {
        case pending
        case inProgress
        case completed
    }
}

struct DentalCase: Identifiable {
    let id = UUID()
    var patientName: String
    var doctor: String
    var type: String
    var units: Int
    var material: String
    var shade: String
    var priority: String
    var dueDate: Date
    var steps: [CaseStep]
}
