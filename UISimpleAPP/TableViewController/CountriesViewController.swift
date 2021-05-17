
import UIKit

class CountriesViewController: UIViewController, UITableViewDataSource {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .secondarySystemBackground
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Coutries"
//        self.tableView.addSubview(self.tableView)
        self.tableView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        self.tableView.register(CountriesVCModel.self, forCellReuseIdentifier: CountriesVCModel.reuseID)
        self.tableView.dataSource = self
        self.updateLayout(with: self.view.frame.size)
        
    }
    
    private func updateLayout(with size: CGSize) {
        self.tableView.frame = CGRect.init(origin: .zero, size: size)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: CountriesVCModel.reuseID, for: indexPath) as! CountriesVCModel
       
        return cell
    }
    
    
    let tableView = UITableView.init(frame: .zero, style: UITableView.Style.grouped)
    
    
    

 func willTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    super.viewWillTransition(to: size, with: coordinator)
       coordinator.animate(alongsideTransition: { (contex) in
          self.updateLayout(with: size)
       }, completion: nil)
    }
}
