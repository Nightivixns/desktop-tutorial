import SwiftUI

struct MainView: View {
    var role: UserRole

    // Sample data for demonstration
    @State private var cases: [DentalCase] = []

    var body: some View {
        switch role {
        case .labOwner:
            CaseListView(title: "All Cases", cases: cases)
        case .doctor:
            CaseListView(title: "My Cases", cases: cases)
        case .worker:
            CaseListView(title: "Assigned Steps", cases: cases)
        }
    }
}
