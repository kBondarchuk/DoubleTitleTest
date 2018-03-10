//
//  ViewController.swift
//  DoubleTitleTest
//
//  Created by Konstantin Bondarchuk on 10.03.18.
//  Copyright © 2018 Konstantin Bondarchuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBAction func actionDouble(_ sender: Any) 
	{
		self.navigationItem.titleView = BKDoubleTitleView(with: self.navigationItem.title!, subTitle: "And this is sub title string", titleTextStyle: .headline, subTitleTextStyle: .caption1, titleColor: .black, subTitleColor: .darkGray)
	}
	
	@IBAction func actionSingle(_ sender: Any) 
	{
		self.navigationItem.titleView = nil
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	
		self.navigationItem.title = "Main Title String"
		
	}
	

}

