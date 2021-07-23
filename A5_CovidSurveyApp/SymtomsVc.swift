//
//  SymtomsVc.swift
//  A5_CovidSurveyApp
//
//  Created by Dipak on 31/04/1943 Saka.
//

import UIKit

class SymtomsVc: UIViewController {

    private let symptomarr = ["# Dry Cough","# Fever","# Tiredness","# Sour throut","# No Taste Feels","# Headache","# Diariare"]
    private let mytable = UITableView()
    private var arrtouse = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(mytable)
        setup()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mytable.frame = CGRect(x: 10, y: view.safeAreaInsets.top+5, width: view.width-20, height: view.height-view.safeAreaInsets.top-view.safeAreaInsets.bottom)
    }

}
extension SymtomsVc:UITableViewDelegate,UITableViewDataSource
{
    func setup()
    {
        mytable.delegate = self
        mytable.dataSource = self
        mytable.register(UITableViewCell.self, forCellReuseIdentifier: "mytable1")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return symptomarr.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"mytable1", for: indexPath)
//        print(indexPath.row)
        cell.backgroundColor = .systemYellow
        cell.textLabel?.text = symptomarr[indexPath.row]
        cell.textLabel?.adjustsFontSizeToFitWidth = true
        cell.textLabel?.minimumScaleFactor = 0.1
       
        cell.textLabel?.font = UIFont.systemFont(ofSize: 30.0)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
