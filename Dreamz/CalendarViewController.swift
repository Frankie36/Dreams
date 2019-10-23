//
//  CalendarViewController.swift
//  Dreamz
//
//  Created by Francis Ngunjiri on 23/10/2019.
//  Copyright © 2019 Francis Ngunjiri. All rights reserved.
//

import UIKit
import FSCalendar

class CalendarViewController: UIViewController, FSCalendarDataSource, FSCalendarDelegate, UITableViewDelegate, UITableViewDataSource {
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    var dreams = [Dream]()

    override func viewDidLoad() {
        super.viewDidLoad()
        do {
          dreams = try context.fetch(Dream.fetchRequest())
        } catch let error as NSError {
          print("Could not fetch. \(error), \(error.userInfo)")
        }
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           do {
             dreams = try context.fetch(Dream.fetchRequest())
           } catch let error as NSError {
             print("Could not fetch. \(error), \(error.userInfo)")
           }
       }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dreams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "cellDream", for: indexPath) as! DreamTableViewCell
        
        cell.lblTitle.text = dreams[indexPath.row].title
        cell.lblDescription.text = dreams[indexPath.row].details
        
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
