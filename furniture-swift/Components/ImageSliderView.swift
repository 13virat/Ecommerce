import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex = 0
    var slides: [String] = ["fn1","fn2","fn3","fn4","fn5"]
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image(slides[currentIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 180)
                    .cornerRadius(15)
            }
            
            HStack {
                ForEach(slides.indices, id: \.self) { index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width: 10, height: 10)
                }
            }
            .padding()
        }
        .padding()
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
                if self.currentIndex + 1 == self.slides.count {
                    self.currentIndex = 0
                } else {
                    self.currentIndex += 1
                }
            }
        }
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView()
    }
}
