
import UIKit

class CountriesViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    let flagsAr = [UIImage(named: "fr"), UIImage(named: "ge"),UIImage(named: "ind"),UIImage(named: "uk"),UIImage(named: "usa")]
    let namesOfCountry = ["France", "Germany", "India", "United Kindom", "United States"]
    let tableView = UITableView.init(frame: .zero, style: UITableView.Style.grouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .secondarySystemBackground
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Coutries"
        
        self.tableView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        self.tableView.register(CountriesVCModel.self, forCellReuseIdentifier: "CountriesVCModel")
        self.tableView.dataSource = self
        self.updateLayout(with: self.view.frame.size)
        self.view.addSubview(tableView)
        
    }
    func willTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        coordinator.animate(alongsideTransition: { (contex) in
            self.updateLayout(with: size)
        }, completion: nil)
    }
    
    private func updateLayout(with size: CGSize) {
        self.tableView.frame = CGRect.init(origin: .zero, size: size)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
        case self.tableView:
            return self.flagsAr.count
        default:
            return 0
        }
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "CountriesVCModel", for: indexPath) as! CountriesVCModel
        cell.flagLabel.image = flagsAr[indexPath.row]
        cell.nameOfCountry.text = namesOfCountry[indexPath.row]
        
        if indexPath.row == 0 {
            cell.accessoryType = .disclosureIndicator
        } else {
            cell.accessoryType = .none
        }
        return cell
    }
}
