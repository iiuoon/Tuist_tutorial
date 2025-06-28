import UIKit
import TuistUI
import Alamofire
import PinLayout
import FlexLayout

public class ContentViewController: UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let commonVC = CommonViewController()
        addChild(commonVC)
        commonVC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(commonVC.view)
        commonVC.didMove(toParent: self)
        
        NSLayoutConstraint.activate([
            commonVC.view.topAnchor.constraint(equalTo: view.topAnchor),
            commonVC.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            commonVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            commonVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
