//
//  PatientDAO.swift
//  Examples
//
//  Created by Pedro Miranda on 7/27/15.
//  Copyright (c) 2015 ivanschuetz. All rights reserved.
//

import Foundation

import Parse

//var dtDAOaux: DataBaseDAO = DataBaseDAO()


var consulta: Int = 0

class DAOUser
{
    
    
//    class func getUserByEmail(useremail:String) -> User!{
//        //
//        //        dispatch_async(dispatch_get_global_queue(Int(QOS_CLASS_USER_INITIATED.value), 0)) { // 1
//        //          //  dtDAOaux.getUserSpecsWithEmail(useremail)
//        //
//        //
//        //
//        //            var aux = false
//        //
//        //            while (aux==false)
//        //            {
//        //
//        //                if (consulta==0)
//        //                {
//        //                    // println("CONSULTA ZERO")
//        //
//        //                    consulta = Int(dtDAOaux.consultaFinalizada);
//        //                }
//        //                else
//        //                {
//        //                    aux = true
//        //                    dispatch_async(dispatch_get_main_queue()) { // 2
//        //                        println("GCD ACABOU") // 3
//        //                        //consulta = Int(dtDAOaux.consultaFinalizada);
//        //
//        //                        user = self.saveUserInstance()
//        //                    }
//        //                }
//        //            }
//        //        }// fim do dispacth
//        //
//        //        if (user == nil)
//        //        {
//        //            println("USUARIO NUL")
//        //            return nil;
//        //
//        //        }
//        //        else
//        //        {
//        //            return user
//        //        }
//        return nil
//    }
    
    
    
    
    
//    class func saveUserInstance()
//    {
//        var query = PFQuery(className:"TUser")
//        query.whereKey("email", equalTo: (Data.sharedInstance.user?.email! as String!))
//        query.getFirstObjectInBackgroundWithBlock ({
//            (object:PFObject?, error:NSError?)  in
//            
//            if (object != nil)
//            {
//                println("Usuario Ja existe na tabela TUser")
//            }
//            else
//            {
//                var object = PFObject(className: "TUser")
//                //object.setObject(imageFile, forKey: "photoData")
//                //Object.setObject(wear.likes, forKey: "WearID")
//                object.setObject(Data.sharedInstance.user!.email, forKey: "email")
//                object.setObject(Data.sharedInstance.user!.first_name, forKey: "first_name")
//                object.setObject(Data.sharedInstance.user!.last_name, forKey: "last_name")
//                object.setObject(Data.sharedInstance.user!.gender, forKey: "gender")
//                object.setObject(Data.sharedInstance.user!.size, forKey: "size")
//                object.setObject(Data.sharedInstance.user!.age!, forKey: "age")
//                object.setObject(Data.sharedInstance.user!.mobile!, forKey: "mobile")
//                object.saveInBackgroundWithBlock
//                    {
//                        (success: Bool, error: NSError?) -> Void in
//                        if (success == true)
//                        {
//                            NSLog("Object created with id: \(object.objectId)")
//                            Data.sharedInstance.user?.userKey = object.objectId
//                        } else {
//                            NSLog("%@", error!)
//                        }
//                }
//                println("usuario salvo com sucesso na UserDAO")
//            }
//            
//            
//        })
//        
//        
//    }
//    
//    class func saveUserLike (userMail: String?, photoID: String?, photoUserEmail: String?)
//    {
//        
//        var query = PFQuery(className:"UserLikes")
//        query.whereKey("email", equalTo: (Data.sharedInstance.user?.email! as String!))
//        var query2 = query.whereKey("StrangerWearID", equalTo: photoID!)
//        query2.getFirstObjectInBackgroundWithBlock ({
//            (object:PFObject?, error:NSError?)  in
//            
//            if (object != nil)
//            {
//                println("Usuario Ja curtiu essa foto")
//            }
//            else
//            {
//                var object = PFObject(className: "UserLikes")
//                object.setObject(userMail!, forKey: "UserEmail")
//                object.setObject(photoUserEmail!, forKey: "StrangerEmail")
//                object.setObject(photoID!, forKey: "StrangerWearID")
//                object.saveInBackgroundWithBlock
//                    {
//                        (success: Bool, error: NSError?) -> Void in
//                        if (success == true)
//                        {
//                            NSLog("Object created with id: \(object.objectId)")
//                            Data.sharedInstance.user?.userKey = object.objectId
//                        } else {
//                            NSLog("%@", error!)
//                        }
//                }
//                println("usuario salvo com sucesso na UserDAO")
//            }
//            
//            
//        })
//        
//    }
}
