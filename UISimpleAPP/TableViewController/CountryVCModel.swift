
import UIKit

class CountriesVCModel: UITableViewCell {
    
    static let reuseID = "CountriesVCModel"
    
    
    var flagImage: UIImageView?
    var nameOfCountry: String?
    
    
    private let flagImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "")
        image.layer.cornerRadius = 15

        return image
    }()
    
    private let nameOfCountryLabel: UILabel = {
       let label = UILabel()
        
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .blue
        isUserInteractionEnabled = false
        
        addSubview(flagImageView)
        
        flagImageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 10, paddingRight: 10, width: frame.size.width / 2, height: frame.size.height)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        flagImageView.image = flagImage?.image
    }
}
