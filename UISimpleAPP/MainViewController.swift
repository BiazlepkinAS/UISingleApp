
import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
    
        let backGroundImage: UIImageView = {
            let image = UIImageView()
            image.image = UIImage(named: "backGround")
            return image
        }()
        view.addSubview(backGroundImage)
        backGroundImage.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor,
                               paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.size.width,
                               height: view.frame.size.height)
        
        let button = PulsatingButton(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        button.center = self.view.center
        view.addSubview(button)
        button.addTarget(self, action: #selector(self.connection(sender:)), for: .touchUpInside)
        if button.isEnabled == true {
            button.pulse()
        } else {
        print("no")
        }
        
//        button.pulse()
     
        
        let menuButton: UIButton = {
           let button = UIButton()
            button.backgroundColor = .white
            button.addTarget(self, action: #selector(aboutView), for: .touchUpInside)
            button.isEnabled = true
            button.layer.cornerRadius = 5
            return button
        }()
        view.addSubview(menuButton)
        menuButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 220, paddingLeft: 20, paddingBottom: 0, paddingRight: 0, width: button.frame.size.width / 8, height: button.frame.size.height / 8)
        
    }
    
    @objc func connection(sender: UIButton) {
    
        
        print("It's OK")
        self.animateButton(buttToAnimate: sender as! PulsatingButton)
    }
    @objc func aboutView() {
        navigationController?.present(CountriesViewController(), animated: true, completion: nil)
    }
    
    
    fileprivate func animateButton(buttToAnimate: PulsatingButton) {
        PulsatingButton.animate(withDuration: 1.15, delay: 0, usingSpringWithDamping: 0.2,
                                initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
                                    
                                    buttToAnimate.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
                                    
                                }) { (_)in
            print("ok")
        }
    }
}
