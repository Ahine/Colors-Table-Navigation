//
//  ColorsViewController.swift
//  Colors Table View
//
//  Created by Andy Hine on 10/14/17.
//  Copyright © 2017 Andy Hine. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var colors = [Color(name: "red", color: UIColor.red),
                  Color(name: "orange", color: UIColor.orange),
                  Color(name: "yellow", color: UIColor.yellow),
                  Color(name: "green", color: UIColor.green),
                  Color(name: "blue", color: UIColor.blue),
                  Color(name: "purple", color: UIColor.purple),
                  Color(name: "brown", color: UIColor.brown),
                  Color(name: "white", color: UIColor.white)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        let cellColor = colors[indexPath.row]
        cell.textLabel?.text = cellColor.name
        cell.backgroundColor = cellColor.color
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
