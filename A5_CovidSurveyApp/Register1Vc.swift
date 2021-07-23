//
//  Register1Vc.swift
//  A5_CovidSurveyApp
//
//  Created by Dipak on 30/04/1943 Saka.
//

import UIKit

class Register1Vc: UIViewController {

    
    private let lbheading:UILabel = {
        let lb=UILabel()
        lb.text="Registration Form"
        lb.backgroundColor = .white
        lb.textColor = .orange
        lb.textAlignment = .center
        lb.font = .systemFont(ofSize: 30.0, weight: .heavy)
        return lb
    }()
    private let lbheading1:UILabel = {
        let lb=UILabel()
        lb.text="Covid so please co-operate with us"
        lb.backgroundColor = .white
        lb.textColor = .orange
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 23.0, weight: .heavy)
        return lb
    }()
    private let lbname:UILabel = {
        let lb=UILabel()
        lb.text="Enter Name"
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.layer.cornerRadius = 40
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let txtname:UITextField = {
        let mytext = UITextField()
        mytext.placeholder = ""
        mytext.textAlignment = .center
        mytext.textColor = .black
        mytext.backgroundColor = .systemYellow
        return mytext
    }()
    private let lbemail:UILabel = {
        let lb=UILabel()
        lb.text="Enter EmailId"
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let txtemail:UITextField = {
        let mytext = UITextField()
        mytext.placeholder = ""
        mytext.textAlignment = .center
        mytext.textColor = .black
        mytext.backgroundColor = .systemYellow
        return mytext
    }()
    private let lbdob:UILabel = {
        let lb=UILabel()
        lb.text="Enter Date Of Birth"
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let dobdate:UIDatePicker = {
        let datepicker = UIDatePicker()
        datepicker.datePickerMode = .date
//        datepicker.timeZone = TimeZone(secondsFromGMT: 0)
        datepicker.addTarget(self, action: #selector(datepickerfunc), for: .touchUpInside)
        datepicker.backgroundColor = .systemYellow
        return datepicker
    }()
    @objc func datepickerfunc() {
        print(dobdate.date)
    }
    private let lbgender:UILabel = {
        let lb=UILabel()
        lb.text="Enter Gender"
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let gendersegment:UISegmentedControl = {
        let segment = UISegmentedControl()
        segment.insertSegment(withTitle: "Male", at: 0, animated: true)
        segment.insertSegment(withTitle: "Female", at: 1, animated: true)
        segment.selectedSegmentIndex = 0
        segment.addTarget(self, action: #selector(segmentfunc), for:.valueChanged)
        segment.backgroundColor = .systemYellow
        return segment
    }()
    @objc func segmentfunc() {
        print(gendersegment.selectedSegmentIndex)
    }
    private let lbmono:UILabel = {
        let lb=UILabel()
        lb.text="Enter Mobile No."
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let txtmono:UITextField = {
        let mytext = UITextField()
        mytext.placeholder = ""
        mytext.textAlignment = .center
        mytext.textColor = .black
        mytext.backgroundColor = .systemYellow
        return mytext
    }()
    private let btnnext:UIButton = {
        let btn = UIButton()
        btn.setTitle("next", for: .normal)
        btn.addTarget(self, action: #selector(btnfunc), for: .touchUpInside)
        btn.backgroundColor = .orange
//        btn.titleColor(for: .normal)
        btn.layer.cornerRadius = 10
        return btn
    }()
    @objc func btnfunc() {
        navigationController?.pushViewController(Register2Vc(), animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        title = "Register Page 1"
        view.backgroundColor = .white
        view.addSubview(lbheading)
        view.addSubview(lbheading1)
        view.addSubview(lbname)
        view.addSubview(txtname)
        view.addSubview(lbemail)
        view.addSubview(txtemail)
        view.addSubview(lbdob)
        view.addSubview(lbgender)
        view.addSubview(lbmono)
        view.addSubview(dobdate)
        view.addSubview(gendersegment)
        view.addSubview(txtmono)
        view.addSubview(btnnext)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lbheading.frame = CGRect(x: 0, y: view.safeAreaInsets.top+2, width: view.width-40, height: 50)
//        lbheading1.frame = CGRect(x: 0, y: lbheading.bottom, width: view.width-40, height: 50)
        
        lbname.frame = CGRect(x: 10, y: lbheading.bottom+5, width: view.width-20, height: 50)
        txtname.frame = CGRect(x: 10, y: lbname.bottom, width: view.width-20, height: 50)
        
        lbemail.frame = CGRect(x: 10, y: txtname.bottom+10, width: view.width-20, height: 50)
        txtemail.frame = CGRect(x: 10, y: lbemail.bottom, width: view.width-20, height: 50)
        
        lbdob.frame = CGRect(x: 10, y: txtemail.bottom+10, width: view.width-20, height: 50)
        dobdate.frame = CGRect(x: 10, y: lbdob.bottom, width: view.width-20, height: 50)
        
        lbgender.frame = CGRect(x: 10, y: dobdate.bottom+10, width: view.width-20, height: 50)
        gendersegment.frame = CGRect(x: 10, y: lbgender.bottom, width: view.width-20, height: 50)
        
        lbmono.frame = CGRect(x: 10, y: gendersegment.bottom+10, width: view.width-20, height: 50)
        txtmono.frame = CGRect(x: 10, y: lbmono.bottom, width: view.width-20, height: 50)
        
        btnnext.frame = CGRect(x: 140, y: txtmono.bottom+30, width: 100, height: 50)
    }

}
