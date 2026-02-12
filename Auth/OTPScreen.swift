import SwiftUI

struct OTPScreen : View {
    @Binding var isUserLoggedIn: Bool
    @State var otp:String = ""
    var body: some View {
        VStack{
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
                
            }
            HStack {
                Text("Enter OTP")
                Spacer()
                TextField("1111", text: $otp)
                    .multilineTextAlignment(.trailing)
                    .keyboardType(.numberPad)
                    .onChange(of: otp) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered.count > 4 {
                            otp = String(filtered.prefix(4))
                        } else {
                            otp = filtered
                        }
                    }
            }
            .padding(.horizontal)
            Text("If you didn't get otp then enter 1111 😊").padding(.vertical)
            Button(){
                isUserLoggedIn = true
            }label:{
                Text("Verify")
                .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(otp.isEmpty ? Color.gray : Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .disabled(otp.isEmpty)
        }.padding()
    }
}
