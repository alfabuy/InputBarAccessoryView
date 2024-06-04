//
//  InputBarView.swift
//  
//
//  Created by alfa on 04/06/2024.
//

import UIKit
import CustomBlurEffectView

open class InputBarView: UIView {
	
	open weak var delegate: InputBarAccessoryViewDelegate?
	
	@IBOutlet weak var backgroundView: CustomBlurEffectView! = {
		return CustomBlurEffectView(radius: 20, color: .black, colorAlpha: 0.8)
	}()
	
	
	required public override init(frame: CGRect) {
		super.init(frame: frame)
		commonInit()
	}
	
	required public init?(coder: NSCoder) {
		super.init(coder: coder)
		commonInit()
	}
	
	private func commonInit() {
		setupView()
	}
	
	private func setupView() {
		let nib = UINib(nibName: "InputBarView", bundle: .module)
		if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
			view.frame = self.bounds
			addSubview(view)
		}
	}
}

