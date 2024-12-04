import SwiftUI

struct CustomTextView: View {
    var text: String
    
    var body: some View {
        // Before drawing, the method converts the text to uppercase
        let convertedText = convertText(text)
        
        Text(convertedText)
            .padding()
            .background(Color.yellow)
            .cornerRadius(8)
    }
    
    // Method to convert the text before drawing
    func convertText(_ text: String) -> String {
        return text.uppercased()
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            CustomTextView(text: "Hello, SwiftUI!")
            CustomTextView(text: "This is a custom text view.")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
