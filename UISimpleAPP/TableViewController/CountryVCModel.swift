
import UIKit

class CountriesVCModel: UITableViewCell {

    static let reuseID = "CountriesVCModel"

    let flagLabel: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "")
        image.layer.cornerRadius = 15
        
        return image
    }()

    let nameOfCountry: UILabel = {
       let label = UILabel()
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .darkText
        label.textAlignment = .left
        return label
    }()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(flagLabel)
        addSubview(nameOfCountry)


        flagLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 10, paddingRight: 10, width: contentView.frame.width/10, height: contentView.frame.size.height/2)
        nameOfCountry.anchor(top: topAnchor, left: flagLabel.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 10, paddingRight: 10, width: 100, height: 100)


    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//override func prepareForReuse() {
//super.prepareForReuse()
//self.accessoryType = .none
//}


}
