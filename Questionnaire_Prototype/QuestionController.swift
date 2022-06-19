//
//  ViewController.swift
//  Questionnaire_Prototype
//
//  Created by 김미향 on 2022/03/30.
//

import UIKit

class QuestionController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "질문지"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }


}

class AnswerCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    let nameLable: UILabel = {
        let label = UILabel()
        label.text = "Sample Answer"
        return label
    }()
    
    func setupViews() {
        addSubview(nameLable)
        addConstraint(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", metrics: nil, views: ["v0":nameLable]))
        addConstraint(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":nameLable]))
    }
    
}

