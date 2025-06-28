//import SwiftUI
//
//public struct CommonView: View {
//    public init() {}
//    
//    public var body: some View {
//        Text("I Love Tuist!")
//    }
//}
//
//#Preview {
//    CommonView()
//}

import UIKit

public class CommonViewController: UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "I Love Tuist!"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

