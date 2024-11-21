import UIKit

class DoubleTapGesture: UITapGestureRecognizer {
    override init(target: Any?, action: Selector?) {
        super.init(target: target, action: action)
        
        self.numberOfTapsRequired = 2
        self.addTarget(self, action: #selector(handleDoubleTap))
    }
    
    @objc func handleDoubleTap() {
        print("Double tap gesture recognized")
    }
}
