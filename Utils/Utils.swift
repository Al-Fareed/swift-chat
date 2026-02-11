
import SwiftUI
import Combine
class Utils: ObservableObject {
    
    @Published var showAlert: Bool = false
    @Published var alertMessage: String = ""
    
    func alertUser(message: String) {
        alertMessage = message
        showAlert = true
    }
}
