//
//  UINavigationItem+DoubleTitle.swift
//  DoubleTitleTest
//
//  Created by Konstantin Bondarchuk on 11.03.18.
//  Copyright © 2018 Konstantin Bondarchuk. All rights reserved.
//

import UIKit

extension UINavigationItem {

	var mainTitle: String? {
		set {
			if let doubleView = self.titleView as? BKDoubleTitleView {
				doubleView.titleText = newValue
				self.title = newValue
			}else {
				self.title = newValue
			}
		}
		
		get {
			if let doubleView = self.titleView as? BKDoubleTitleView {
				return doubleView.titleText
			}		
			return self.title
		}
	}
	
	var subTitle: String? {
		set {
			if let doubleView = self.titleView as? BKDoubleTitleView {
				doubleView.subTitleText = newValue
			}
		}
		
		get {
			if let doubleView = self.titleView as? BKDoubleTitleView {
				return doubleView.subTitleText
			}		
			return nil
		}
	}
	
	
}
