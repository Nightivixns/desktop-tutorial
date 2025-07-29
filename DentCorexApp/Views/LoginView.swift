import SwiftUI

struct LoginView: View {
    var onLogin: (UserRole) -> Void

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("DentCorex")
                    .font(.largeTitle)
                    .bold()
                Text("Select Role to Login")
                    .foregroundColor(.gray)
                ForEach(UserRole.allCases) { role in
                    Button(action: { onLogin(role) }) {
                        Text(role.rawValue)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.accentColor)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
            }
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(onLogin: { _ in })
    }
}
