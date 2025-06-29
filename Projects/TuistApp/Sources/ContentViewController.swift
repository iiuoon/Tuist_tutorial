import UIKit
import TuistUI
import Alamofire
import PinLayout
import FlexLayout

public class ContentViewController: UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let commonView = CommonView()
        view.addSubview(commonView)

        commonView.snp.makeConstraints {
            $0.center.width.height.equalToSuperview()
        }
    }
}
