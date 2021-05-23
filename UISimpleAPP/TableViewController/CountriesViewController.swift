
import UIKit

class CountriesViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    let coutries = ["France", "Germany", "India", "United Kindom", "United States"]
    let tableView = UITableView.init(frame: .zero, style: UITableView.Style.plain)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .secondarySystemBackground
//        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Coutries"
        self.tableView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        self.tableView.register(CountriesVCCell.self, forCellReuseIdentifier: "CountriesVCModel")
        self.tableView.dataSource = self
        self.updateLayout(with: self.view.frame.size)
        self.view.addSubview(tableView)
        tableView.showsVerticalScrollIndicator = false
        
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
        return coutries.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
        case self.tableView:
            return self.coutries.count
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "CountriesVCModel", for: indexPath) as! CountriesVCCell
        let countries = coutries[indexPath.row]
        cell.nameOfCountry.text = countries
        cell.flagLabel.image = UIImage(named: countries)
        cell.selectionStyle = .blue
        cell.backgroundColor = .systemGray
        
        if indexPath.row == 0 {
            cell.accessoryType = .disclosureIndicator
        } else {
            cell.accessoryType = .none
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
            
    }
}
