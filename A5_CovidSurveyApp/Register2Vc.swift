//
//  Register2Vc.swift
//  A5_CovidSurveyApp
//
//  Created by Dipak on 30/04/1943 Saka.
//

import UIKit

class Register2Vc: UIViewController {

    
    private let lbage:UILabel = {
        let lb=UILabel()
        lb.text="Enter Age"
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let ageslider:UISlider = {
        let slider = UISlider()
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.addTarget(self, action: #selector(sliderfunc), for: .valueChanged)
        slider.backgroundColor = .systemYellow
        return slider
    }()
    @objc func sliderfunc() {
//        print(ageslider.value)
        lbageshow.text = String(Int(ageslider.value))
    }
    private let lbageshow:UILabel = {
        let lb=UILabel()
        lb.text=""
        lb.backgroundColor = .systemYellow
        lb.textColor = .black
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    
    private let txtnooffamilymember:UITextField = {
        let mytext = UITextField()
        mytext.placeholder = " "
        mytext.textAlignment = .center
        mytext.textColor = .black
        mytext.backgroundColor = .systemYellow
        return mytext
    }()

    private let lbaddress:UILabel = {
        let lb=UILabel()
        lb.text="Enter Address"
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let txtareaaddress:UITextView = {
        let textview = UITextView()
        textview.text = ""
        textview.textAlignment = .center
        textview.backgroundColor = .systemYellow
        textview.textColor = .black
        return textview
    }()

    private let lbnooffamilymember:UILabel = {
        let lb=UILabel()
        lb.text="Enter No. of Family Members "
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    private let lbpic:UILabel = {
        let lb=UILabel()
        lb.text="Enter Your Pic "
        lb.backgroundColor = .orange
        lb.textColor = .white
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lb
    }()
    
    private let btnsubmit:UIButton = {
        let btn = UIButton()
        btn.setTitle("Send", for: .normal)
        btn.addTarget(self, action: #selector(btnfunc), for: .touchUpInside)
        btn.backgroundColor = .orange
//        btn.titleColor(for: .normal)
        btn.layer.cornerRadius = 10
        return btn
    }()
    @objc func btnfunc() {
        let alert = UIAlertController(title: "Congratulations....", message: "Your registration is done successfully...", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style:.default, handler: nil))
        
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
          
        }
        navigationController?.pushViewController(ChoiceVc(), animated: true)
    }
    
    
    
    
    private let mytoolbar:UIToolbar = {
       let toolbar = UIToolbar()
        let gallery = UIBarButtonItem(barButtonSystemItem: .organize, target: self, action: #selector(galleryfunc))
        let spacer = UIBarButtonItem(systemItem: .flexibleSpace)
        let camera = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(camerafunc))
        toolbar.items = [gallery,spacer,camera]
        return toolbar
    }()
    @objc func galleryfunc()
    {
        myimagepickerview.sourceType = .photoLibrary
        DispatchQueue.main.async {
            self.present(self.myimagepickerview, animated: true)
        }
    }
    @objc func camerafunc()
    {
        
    }
    
    private let myimgview:UIImageView = {
        let imgview=UIImageView()
        imgview.contentMode = .scaleAspectFill
        imgview.layer.cornerRadius = 40
//        imgview.alpha = 1
        imgview.clipsToBounds = true
        imgview.image = UIImage(named: "logo2")
        imgview.backgroundColor = .black
        return imgview
    }()
    
    private var myimagepickerview:UIImagePickerController =
    {
       let imgpicker = UIImagePickerController()
        imgpicker.allowsEditing = false
        return imgpicker
    }();
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = "Register Page 2"
        view.backgroundColor = .white
        view.addSubview(lbage)
        view.addSubview(ageslider)
        view.addSubview(lbageshow)
        view.addSubview(mytoolbar)
        view.addSubview(myimgview)
        view.addSubview(lbaddress)
        view.addSubview(lbpic)
        view.addSubview(lbnooffamilymember)
        view.addSubview(txtareaaddress)
        view.addSubview(txtnooffamilymember)
        view.addSubview(btnsubmit)
//        view.addSubview(myimagepickerview)
        myimagepickerview.delegate = self
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lbpic.frame = CGRect(x: 10, y: view.safeAreaInsets.top+5, width: view.width-20, height: 50)
        let toolBarHeight:CGFloat = 50
        mytoolbar.frame = CGRect(x: 0, y: lbpic.bottom, width: view.width, height: toolBarHeight)
        myimgview.frame = CGRect(x: 10, y: mytoolbar.bottom+5, width: view.width-50, height: 150)
        
        lbage.frame = CGRect(x: 10, y: myimgview.bottom+10, width: view.width-20, height: 50)
        ageslider.frame = CGRect(x: 10, y: lbage.bottom, width: view.width-80, height: 50)
        lbageshow.frame = CGRect(x: ageslider.right, y: lbage.bottom, width: 60, height: 50)
        
        lbnooffamilymember.frame = CGRect(x: 10, y: lbageshow.bottom+10, width: view.width-20, height: 50)
        txtnooffamilymember.frame = CGRect(x: 10, y: lbnooffamilymember.bottom, width: view.width-20, height: 50)
        
        lbaddress.frame = CGRect(x: 10, y: txtnooffamilymember.bottom+10, width: view.width-20, height: 50)
        txtareaaddress.frame = CGRect(x: 10, y: lbaddress.bottom, width: view.width-20, height: 80)
        
        btnsubmit.frame = CGRect(x: 140, y: txtareaaddress.bottom+20, width: 100, height: 50)
    }
}
extension Register2Vc:UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedimg = info[.originalImage] as? UIImage
        {
            myimgview.image = selectedimg
        }
        picker.dismiss(animated: true)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}
