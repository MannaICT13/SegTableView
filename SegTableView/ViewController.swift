//
//  ViewController.swift
//  SegTableView
//
//  Created by USER on 1/25/19.
//  Copyright © 2019 mCubes. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIApplicationDelegate {

    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var tableView: UITableView!
    
    var array1:[RangpurData] = []
    var array2:[DhakaData] = []
    var array3:[BarisalData] = []
    var array4 :[ChittagongData] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        array1 = [
              RangpurData(city: "Rangpur", zip: "5500"),
              RangpurData(city: "Rangpur", zip: "5500"),
              RangpurData(city: "Rangpur", zip: "5500"),
              RangpurData(city: "Rangpur", zip: "5500")
        
        ]
    
        array2 = [
            DhakaData(city: "Rangpur", zip: "5500"),
            DhakaData(city: "Rangpur", zip: "5500"),
            DhakaData(city: "Rangpur", zip: "5500"),
            DhakaData(city: "Rangpur", zip: "5500")
            
        ]
        
        array3 = [
            BarisalData(city: "Rangpur", zip: "5500"),
            BarisalData(city: "Rangpur", zip: "5500"),
            BarisalData(city: "Rangpur", zip: "5500"),
            BarisalData(city: "Rangpur", zip: "5500")
            
        ]
        
        array4 = [
            ChittagongData(city: "Rangpur", zip: "5500"),
            ChittagongData(city: "Rangpur", zip: "5500"),
            ChittagongData(city: "Rangpur", zip: "5500"),
            ChittagongData(city: "Rangpur", zip: "5500")
            
        ]
        
        
        
    }
    
   
    
    @IBAction func segAction(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
    }
}




extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 110
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var value = 0
      
        switch  segment.selectedSegmentIndex{
            
        case  0:
            value = array1.count
            break
        case 1:
            value = array2.count
            break
        case 2:
            value  = array3.count
            break
            
        case 3:
            value = array4.count
            break
        default:
            break
            
        }
        return value
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        switch segment.selectedSegmentIndex {
        case 0:
             cell.lbl1.text = array1[indexPath.row].city
             cell.lbl2.text = array2[indexPath.row].zip
             
            break
        case 1:
            cell.lbl1.text = array2[indexPath.row].city
            cell.lbl2.text = array2[indexPath.row].zip
            break
        case 2:
           cell.lbl1.text = array3[indexPath.row].city
           cell.lbl2.text = array3[indexPath.row].zip
            break
        case 4:
            cell.lbl1.text = array4[indexPath.row].city
            cell.lbl2.text = array4[indexPath.row].zip
            break
        default:
            break
        }
        
        
        
        return cell
    }

    

    
    
}














