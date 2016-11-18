//
//  AppDelegate.swift
//  iQuiz
//
//  Created by Rohan Thakkar on 11/15/16.
//  Copyright © 2016 Lit Phansiri. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var subjects = [[String:[String:String]]]()
    let math = [
        "imageFile": "math icon",
        "subject": "Mathematics",
        "descr": "Where numbers are everything."
    ]
    
    let hero = [
        "imageFile": "hero icon",
        "subject": "Marvel Super Heroes",
        "descr": "Where power is everything."
    ]
    
    let science = [
        "imageFile": "science icon",
        "subject": "Science",
        "descr": "Where facts are everything."
    ]
    
    func addSubjects() {
        subjects.append(["data": math])
        subjects.append(["data": hero])
        subjects.append(["data": science])
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {

    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

        self.saveContext()
    }


    lazy var persistentContainer: NSPersistentContainer = {

        let container = NSPersistentContainer(name: "iQuiz")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {

                fatalError("Error recorded \(error), \(error.userInfo)")
            }
        })
        return container
    }()


    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {

                let nserror = error as NSError
                fatalError("Error recorded \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

