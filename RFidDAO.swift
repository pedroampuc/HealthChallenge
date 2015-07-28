//
//  RFidDAO.swift
//  Examples
//
//  Created by Pedro Miranda on 7/27/15.
//  Copyright (c) 2015 ivanschuetz. All rights reserved.
//

import Foundation
import Parse

//var dtDAOaux: DataBaseDAO = DataBaseDAO()




class RFidDAO
{
    
    var patientsRFID : [PFObject] = [PFObject]()
    var finish : Bool? = false
    func getPatientsByRFid()
    {
        //
                dispatch_async(dispatch_get_global_queue(Int(QOS_CLASS_USER_INITIATED.value), 0)) { // 1
        //          //  dtDAOaux.getUserSpecsWithEmail(useremail)
                    var finish2 :Bool = false
                    
                    self.finish = false
                    
                    //self.patientsRFID = [PFObject]?()
                    
                    //var query = PFQuery(className:"Rfid")
                    
                    var query2 = PFQuery(className:"Rfid")
                    
                    query2.findObjectsInBackgroundWithBlock({
                                (objects: [AnyObject]?, error: NSError?) -> Void in
                                
                                if error != nil
                                {
                                    println(error)
                                } else
                                {
                                    println("Successfully retrieved \(objects!.count) scores.")
                                    
                                    var i = 0
                                    if let objects = objects as? [PFObject]
                                    {
                                        for object in objects
                                        {
                                            
        
                                            
                                            self.patientsRFID.append(object)
                                            println("id do objeto \(self.patientsRFID)")
                                            i++

                                        }
                                    }
                                    else
                                    {
                                        // Log details of the failure
                                        println("Error: \(error!) \(error!.userInfo!)")
                                    }
                                }// fim do else
                                
                        dispatch_async(dispatch_get_main_queue()) { // 2
                        
                            
                            self.finish = true
                            finish2 = true
                            
                            NSLog("temrminou a consultadentro da rfid\(self.finish)")
                        }
                        
                })
                    
                }// fim do dispacth
        
       
    }
    
    func getPatientRFids()->[PFObject]?
    {
        if(self.finish == true)
        {
            return patientsRFID
        }else
        {
            return nil
        }
    }

    
    
    
}
