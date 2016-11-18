//
//  SubjectsTableViewController.swift
//  iQuiz
//
//  Created by Rohan Thakkar on 11/15/16.
//  Copyright © 2016 Lit Phansiri. All rights reserved.

//

import UIKit

class SubjectsTableViewController: UITableViewController {
    
    var subjects = [[String:[String:String]]]()
 
    @IBAction func settingsButton(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Settings", message: "Settings go here", preferredStyle: .alert)
        // let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        // alert.addAction(cancel)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        delegate.subjects.removeAll()
        delegate.addSubjects()
        subjects = delegate.subjects
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return self.subjects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "iQuizCell", for: indexPath) as! SubjectsTableViewCell
        let subject = self.subjects[indexPath.row]
        let oneSubject = subject["data"]
        //let oneSubject = subject
        cell.subjectLabel.text = oneSubject?["subject"]
        cell.descrLabel.text = oneSubject?["descr"]
        cell.imageLabel.image = UIImage(named: (oneSubject?["imageFile"])!)


        return cell
    }
}
