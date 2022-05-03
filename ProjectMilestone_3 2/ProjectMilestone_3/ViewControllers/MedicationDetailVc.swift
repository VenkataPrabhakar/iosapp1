//
//  MedicationDetailVc.swift

//  Project_MileStone02
//  Created by student on 4/13/22.
//

import UIKit


class MedicationDetailVc: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblViewForm: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayMedicationForm.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommonTableViewCell") as! CommonTableViewCell
        let objForm = arrayMedicationForm[indexPath.row]
        
        cell.lblTitle.text = objForm[0]
        cell.lblDescription.text = objForm[1]
        cell.lblCategory.text = objForm[2]
        cell.lblTime.text = objForm[3]

        return cell
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tblViewForm.delegate = self;
        tblViewForm.dataSource = self;
    }

    
   
    @IBAction func btnBackAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
   
        
   
    
   
    
}
