import SwiftUI

struct CaseListView: View {
    var title: String
    var cases: [DentalCase]

    var body: some View {
        List(cases) { dentalCase in
            NavigationLink(destination: CaseDetailView(dentalCase: dentalCase)) {
                VStack(alignment: .leading) {
                    Text(dentalCase.patientName)
                        .font(.headline)
                    Text(dentalCase.type)
                        .font(.subheadline)
                }
            }
        }
        .navigationTitle(title)
    }
}
