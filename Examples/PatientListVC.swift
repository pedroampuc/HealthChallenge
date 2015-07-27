//
//  PatientListVC.swift
//  Examples
//
//  Created by Pedro Miranda on 7/27/15.
//  Copyright (c) 2015 ivanschuetz. All rights reserved.
//

import Foundation
import UIKit
import Parse


import UIKit

var pfobjects : [PFObject]?

class PatientListVC : UITableViewController, UITableViewDelegate, UITableViewDataSource
{
    
    var items: [String] = ["We", "Heart", "Swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        //
        
        dispatch_async(dispatch_get_global_queue(Int(QOS_CLASS_USER_INITIATED.value), 0))
        {
            var aux = 0
            
            var rDAO = RFidDAO()

            rDAO.getPatientsByRFid()
            
            pfobjects = rDAO.getPatientRFids()
            
            while (rDAO.finish! == false)
            {
                // NSLog("dentro do while")
                pfobjects = rDAO.getPatientRFids()
                println(pfobjects)
            }
            
            dispatch_async(dispatch_get_main_queue())
            {
                    NSLog("temrminou a consulta na patient table view \(pfobjects?.count)")
            }
            
            
        }

    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("You selected cell #\(indexPath.row)!")
        performSegueWithIdentifier("patientdetail", sender: self)
    }
    
    
    
    
    
    
}