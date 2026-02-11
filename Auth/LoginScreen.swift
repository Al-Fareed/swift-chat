import SwiftUI

struct LoginScreen: View {
    
    @State var mobileNumber: String = ""
    
    var body: some View {
        
        VStack(spacing: 24) {
            
            Spacer()
            
            ZStack {
                
                Circle()
                    .fill(Color.gray.opacity(0.1))
                    .frame(width: 120, height: 120)
                
                Image(systemName: "message.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.black)
            }
            
            VStack(spacing: 6) {
                
                Text("SWIFT CHAT")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Welcome to Swift Chat Buddy 👋")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                
                Text("Lets swift chat")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            HStack {
                
                Image(systemName: "phone.fill")
                    .foregroundColor(.gray)
                
                TextField("Enter Mobile / Email", text: $mobileNumber)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(12)
            
            Button {
                // Login action
            } label: {
                
                Text("Login")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.top, 10)
            
            
            Spacer()
            
            Text("By continuing, you agree to our Terms & Privacy Policy")
                .font(.caption)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    LoginScreen()
}
