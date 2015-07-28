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



class PatientListVC : UITableViewController, UITableViewDelegate, UITableViewDataSource
{
    var pfobjects : [PFObject] = [PFObject]()
    var items: [String] = []//[String]() //["We", "Heart", "Swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        //
        
        dispatch_async(dispatch_get_global_queue(Int(QOS_CLASS_USER_INITIATED.value), 0))
        {
            var aux = 0
            
            //var rDAO = RFidDAO()
            
            var patientDAO = PatientDAO()
            
            patientDAO.getPatientsData()
            
            //rDAO.getPatientsByRFid()
            
            //pfobjects = rDAO.getPatientRFids()
            
           // println("vetor na patient table view \(rDAO.patientsRFID)")
            
            while (patientDAO.finish == false)//(rDAO.patientsRFID.count == 0 )//|| rDAO.patientsRFID == nil)
            {
               
            }
           
            self.pfobjects = patientDAO.patientsData //  para pegar os rfids, nao usaremos por enquanto
        
            for object in self.pfobjects
            {
               self.items.append(object.valueForKey("nome") as! String)
            }
            
            //self.items = ["We", "Heart", "Swift"]
            
            dispatch_async(dispatch_get_main_queue())
            {
                    NSLog("temrminou a consulta na patient table view \(self.pfobjects)")
                
                    NSLog("items vet\(self.items)")
                self.tableView.reloadData()
            }
            
            
        }

    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count//pfobjects.count;//self.items.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row] // pfobjects[indexPath.row].valueForKey("nome") as! String//self.items[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("You selected cell #\(indexPath.row)!")
        performSegueWithIdentifier("patientdetail", sender: self)
    }
    
    
    
    
    
    
}