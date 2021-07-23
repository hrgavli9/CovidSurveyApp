//
//  SurveyVc.swift
//  A5_CovidSurveyApp
//
//  Created by Dipak on 31/04/1943 Saka.
//

import UIKit

class SurveyVc: UIViewController {

    private let lbsick:UILabel = {
        let lb=UILabel()
        lb.text="Are you feeling sick?"
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.layer.cornerRadius = 40
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let lbfever:UILabel = {
        let lb=UILabel()
        lb.text="Are you having fever?"
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.layer.cornerRadius = 40
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let lbcough:UILabel = {
        let lb=UILabel()
        lb.text="Are you having cough?"
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.layer.cornerRadius = 40
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let lbheadche:UILabel = {
        let lb=UILabel()
        lb.text="Are you having headche?"
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.layer.cornerRadius = 40
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let lbtiredness:UILabel = {
        let lb=UILabel()
        lb.text="Are you feeling tierdness?"
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.layer.cornerRadius = 100
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let myswitch:UISwitch = {
        let switche = UISwitch()
        switche.addTarget(self, action: #selector(myswitchfunc), for: .valueChanged)
        return switche
    }()
    @objc func myswitchfunc()
    {
        print(myswitch.isOn)
    }
    private let myswitchtierd:UISwitch = {
        let switche = UISwitch()
        switche.addTarget(self, action: #selector(myswitchtierdfunc), for: .valueChanged)
        return switche
    }()
    @objc func myswitchtierdfunc()
    {
        print(myswitchtierd.isOn)
    }
    private let myswitchfever:UISwitch = {
        let switche = UISwitch()
        switche.addTarget(self, action: #selector(myswitchfeverfunc), for: .valueChanged)
        return switche
    }()
    @objc func myswitchfeverfunc()
    {
        print(myswitchfever.isOn)
    }
    private let myswitchcough:UISwitch = {
        let switche = UISwitch()
        switche.addTarget(self, action: #selector(myswitchcoughfunc), for: .valueChanged)
        return switche
    }()
    @objc func myswitchcoughfunc()
    {
        print(myswitchcough.isOn)
    }
    private let myswitchheadache:UISwitch = {
        let switche = UISwitch()
        switche.addTarget(self, action: #selector(myswitchheadchefunc), for: .valueChanged)
        return switche
    }()
    @objc func myswitchheadchefunc()
    {
        print(myswitchheadache.isOn)
    }
    
    private let lbvaccinated:UILabel = {
        let lb=UILabel()
        lb.text="Are you Vaccinated?"
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.layer.cornerRadius = 100
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let myStepper:UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 0
        stepper.maximumValue = 2
        stepper.addTarget(self, action: #selector(stepperfunc), for: .valueChanged)
        return stepper
    }()
    @objc func stepperfunc() {
        print(myStepper.value)
        lbshowvaccine.text = String(Int(myStepper.value))
    }
    private let lbshowvaccine:UILabel = {
        let lb=UILabel()
        lb.text=""
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .center
        lb.layer.cornerRadius = 100
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    
    private let btnsubmit:UIButton = {
        let btn = UIButton()
        btn.setTitle("Submit", for: .normal)
        btn.addTarget(self, action: #selector(btnfunc), for: .touchUpInside)
        btn.backgroundColor = .orange
//        btn.titleColor(for: .normal)
        btn.layer.cornerRadius = 10
        return btn
    }()
    @objc func btnfunc() {
        let alert = UIAlertController(title: "ThankYou....", message: "Your Survey is done successfully...", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style:.default, handler: nil))
        
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
          
        }
        navigationController?.pushViewController(ViewController(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        view.addSubview(lbsick)
        view.addSubview(myswitch)
        view.addSubview(lbfever)
        view.addSubview(lbcough)
        view.addSubview(lbheadche)
        view.addSubview(lbtiredness)
        view.addSubview(myswitchtierd)
        view.addSubview(myswitchcough)
        view.addSubview(myswitchfever)
        view.addSubview(myswitchheadache)
        view.addSubview(lbshowvaccine)
        view.addSubview(lbvaccinated)
        view.addSubview(myStepper)
        view.addSubview(btnsubmit)
      
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lbsick.frame = CGRect(x: 10, y: view.safeAreaInsets.top+30, width: view.width-100, height: 50)
        myswitch.frame = CGRect(x: lbsick.right+5, y:view.safeAreaInsets.top+35 , width: 50, height: 50)
        
        lbfever.frame = CGRect(x: 10, y: myswitch.bottom+10, width: view.width-100, height: 50)
        myswitchfever.frame = CGRect(x: lbfever.right+5, y: myswitch.bottom+15, width: view.width-100, height: 50)
        
        lbcough.frame = CGRect(x: 10, y: myswitchfever.bottom+10, width: view.width-100, height: 50)
        myswitchcough.frame = CGRect(x: lbcough.right+5, y: myswitchfever.bottom+15, width: view.width-100, height: 50)
        
        lbheadche.frame = CGRect(x: 10, y: myswitchcough.bottom+10, width: view.width-100, height: 50)
        myswitchheadache.frame = CGRect(x: lbheadche.right+5, y: myswitchcough.bottom+15, width: view.width-100, height: 50)
        
        lbtiredness.frame = CGRect(x: 10, y: myswitchheadache.bottom+10, width: view.width-100, height: 50)
        myswitchtierd.frame = CGRect(x: lbtiredness.right+5, y: myswitchheadache.bottom+15, width: view.width-100, height: 50)
        
        lbvaccinated.frame = CGRect(x: 10, y: myswitchtierd.bottom+30, width: view.width-100, height: 50)
        myStepper.frame = CGRect(x: lbvaccinated.right+5, y:myswitchtierd.bottom+35 , width: view.width-100, height: 50)
        lbshowvaccine.frame = CGRect(x:10, y: lbvaccinated.bottom, width: view.width-100, height: 50)
        
        btnsubmit.frame = CGRect(x: 20, y: lbshowvaccine.bottom+30, width: view.width-150, height: 50)
        
        
    }
}
