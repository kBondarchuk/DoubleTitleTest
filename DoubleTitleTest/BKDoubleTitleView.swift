//
//  BKDoubleTitleView.swift
//  DoubleTitleTest
//
//  Created by Konstantin Bondarchuk on 10.03.18.
//  Copyright © 2018 Konstantin Bondarchuk. All rights reserved.
//

import UIKit

class BKDoubleTitleView: UIStackView {

	public var titleText: String? {
		set {
			guard newValue != nil else {
				return
			}
			
			titleLabel.attributedText = makeAttributedString(string: newValue!, textStyle: self.titleTextStyle, color: self.titleFontColor)
		}
		
		get {
			return titleLabel.text
		}
	}
	
	public var subTitleText: String? {
		set {
			
			guard newValue != nil else {
				return
			}
			
			subTitleLabel.attributedText = makeAttributedString(string: newValue!, textStyle: self.subTitleTextStyle, color: self.subTitleFontColor)
		}
		
		get {
			return subTitleLabel.text
		}
	}
	
	private var titleLabel = UILabel()
	private var subTitleLabel = UILabel()
	private var titleTextStyle: UIFontTextStyle = .headline
	private var subTitleTextStyle: UIFontTextStyle = .footnote
	private var titleFontColor: UIColor = UIColor.black
	private var subTitleFontColor: UIColor = UIColor.darkText
	
	public convenience init(with title: String, subTitle: String, 
	                        titleTextStyle: UIFontTextStyle = .headline, subTitleTextStyle: UIFontTextStyle = .footnote, 
	                        titleColor: UIColor = UIColor.black, subTitleColor: UIColor = UIColor.darkText)
	{
		self.init(frame: CGRect.zero)
		
		self.titleTextStyle = titleTextStyle
		self.titleFontColor = titleColor
		self.subTitleTextStyle = subTitleTextStyle
		self.subTitleFontColor = subTitleColor
		
		self.axis = .vertical
		self.alignment = .center
		self.distribution = .fill
		self.spacing = 0
		self.translatesAutoresizingMaskIntoConstraints = false

		// Title
		titleLabel.attributedText = makeAttributedString(string: title, textStyle: self.titleTextStyle, color: self.titleFontColor)
		titleLabel.textAlignment = .center
		titleLabel.sizeToFit()
		
		// SubTitle
		subTitleLabel.attributedText = makeAttributedString(string: subTitle, textStyle: self.subTitleTextStyle, color: self.subTitleFontColor)
		subTitleLabel.textAlignment = .center
		subTitleLabel.sizeToFit()

		//titleLabel.backgroundColor = .blue
		//subTitleLabel.backgroundColor = .red
		self.addArrangedSubview(titleLabel)
		self.addArrangedSubview(subTitleLabel)
		
	}

	override init(frame: CGRect) 
	{
		super.init(frame: frame)
		print("*")
	}
	
	required init(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func makeAttributedString(string: String, textStyle: UIFontTextStyle, color: UIColor ) -> NSAttributedString
	{
		return NSAttributedString(string: string, 
		                          attributes: [NSAttributedStringKey.font : UIFont.preferredFont(forTextStyle: textStyle), NSAttributedStringKey.foregroundColor : color ])
	}

	
}
