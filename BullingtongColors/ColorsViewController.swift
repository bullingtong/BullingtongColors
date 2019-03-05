//
//  ColorsViewController.swift
//  BullingtongColors
//
//  Created by Graeson Bullington on 3/4/19.
//  Copyright © 2019 Graeson Bullington. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let colors = ["red", "yellow", "orange", "green", "blue", "purple", "brown"]
    
   let cellReuseIdentifier = "cell"
    
    
    
    @IBOutlet var tableView: UITableView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
        
        
        cell.textLabel?.text = self.colors[indexPath.row]
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
