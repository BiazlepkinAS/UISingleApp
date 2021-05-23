
import UIKit

final class CountryService {
    
    static var countryCell:[String: (String, UIImage)] = {
        var fullSize = [String: (String, UIImage)]()
        fullSize["fr"] = ("France",UIImage(named: "France") ?? UIImage())
        fullSize["de"] = ("Germany",UIImage(named: "Germany") ?? UIImage())
        fullSize["ind"] = ("Indian",UIImage(named: "India") ?? UIImage())
        fullSize["uk"] = ("United Kindom of Great Britain",UIImage(named: "United Kindom") ?? UIImage())
        fullSize["us"] = ("United States of America",UIImage(named: "United States") ?? UIImage())
        
        return fullSize
    }()
}
