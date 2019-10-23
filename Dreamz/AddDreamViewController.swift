//
//  AddDreamViewController.swift
//  Dreamz
//
//  Created by Francis Ngunjiri on 23/10/2019.
//  Copyright © 2019 Francis Ngunjiri. All rights reserved.
//

import UIKit

class AddDreamViewController: UIViewController {
    
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtDescription: UITextField!
    var dreams = [Dream]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addDreamToDb(_ sender: UIButton) {
        if(txtTitle.text!.isEmpty){
            let alert = UIAlertController(title: "Title Empty", message: "The title of the dream is required", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
            
            self.present(alert, animated: true)
            return
        }
        if(txtDescription.text!.isEmpty){
            let alert = UIAlertController(title: "Description Empty", message: "The description of the dream is required", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
            
            self.present(alert, animated: true)
            return
        }
        
        let data = Dream()
        let dream = Dream(entity: Dream.entity(), insertInto: context)
        
        dream.title = txtTitle.text
        dream.details = txtDescription.text
        appDelegate.saveContext()
        dreams.append(dream)
        let index = IndexPath(row:dreams.count - 1, section:0)
        
        self.dismiss(animated: true, completion: nil)
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
