//
//  ViewController.swift
//  Dogs
//
//  Created by Sudhir Shrestha on 16/1/18.
//  Copyright © 2018 Robert Shrestha. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableView:UITableView!
    
    var dogNames = ["Apso","Labrador Retriever","German Shepherd","Rottweiler","Beagle"]
    //var dogImage = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! DogCellTableViewCell
        cell.dogNameLblTxt.text = dogNames[indexPath.row]
        cell.imgView.image = UIImage(named: dogNames[indexPath.row])
        return cell
    }


}

