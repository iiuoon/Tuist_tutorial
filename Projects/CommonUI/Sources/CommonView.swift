import UIKit
import PinLayout
import FlexLayout
import SnapKit
import Then

public class CommonView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        backgroundColor = .white

        let label = UILabel().then {
            $0.text = "I Love Tuist!"
            $0.textAlignment = .center
            $0.font = UIFont.systemFont(ofSize: 24)
        }

        addSubview(label)

        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
