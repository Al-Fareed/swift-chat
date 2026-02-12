
import SwiftUI

struct AccountSettings: View {
    
    let currentUser = Data.currentUser
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var mobile: String = ""
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            // MARK: - Profile Header
            
            VStack(spacing: 12) {
                
                ZStack {
                    Circle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: 110, height: 110)
                    
                    Image(systemName: currentUser.avatar)
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                }
                
                Text("Edit Profile")
                    .font(.title2)
                    .fontWeight(.bold)
                    
            }
            .padding(.vertical)
            
            
            // MARK: - Plain List Settings
            
            List {
                
                Section("Personal Info") {
                    
                    HStack {
                        Text("Name")
                        Spacer()
                        TextField("Name", text: $name)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    HStack {
                        Text("Email")
                        Spacer()
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .textInputAutocapitalization(.never)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    HStack {
                        Text("Phone")
                        Spacer()
                        TextField("Phone Number", text: $mobile)
                            .keyboardType(.phonePad)
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            .listStyle(.plain)   // ✅ Plain style
            
            
            // MARK: - Save Button
            
            Button {
                
            } label: {
                
                Text("Save Changes")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .padding(.bottom)
            }
        }
        
        // Pre-fill values
        .onAppear {
            name = currentUser.name
            mobile = currentUser.mobileNumber
            email = currentUser.email
        }
    }

}




#Preview {
    AccountSettings()
}
