
import UIKit

final class CountryView: UIView {
    private let iconView = UIImageView()
    private let label = UILabel()
    
    static func create(icon: UIImage, title: String) -> CountryView {
        let countryView = CountryView()
        countryView.iconView.image = icon
        countryView.label.text = title
        return countryView
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    private func setup() {
        addSubview(iconView)
        addSubview(label)
        
        let iconWidth: CGFloat = 20
        NSLayoutConstraint.activate([
            iconView.widthAnchor.constraint(equalToConstant: iconWidth),
            iconView.heightAnchor.constraint(equalToConstant: iconWidth),
            iconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0.0),
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.leadingAnchor.constraint(equalTo: iconView.trailingAnchor, constant: 10.0)
            
        ])
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .left
        iconView.contentMode = .scaleAspectFit
        
    }
}
