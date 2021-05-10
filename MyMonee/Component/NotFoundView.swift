//
//  NotFoundView.swift
//  MyMonee
//
//  Created by MacBook on 10/05/21.
//

import UIKit

class NotFoundView: UIView {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var image: UIImageView!
    @IBOutlet var contentView: UIView!
    
    //Constructor dengan programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    //consturctor dengan interface builder (storyBoard)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("NotFoundView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
