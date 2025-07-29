import Foundation

enum UserRole: String, Identifiable, CaseIterable {
    case labOwner = "Lab Owner"
    case doctor = "Doctor"
    case worker = "Worker"

    var id: String { rawValue }
}
