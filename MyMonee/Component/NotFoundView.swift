//
//  NotFoundView.swift
//  MyMonee
//
//  Created by MacBook on 09/05/21.
//

import UIKit

class NotFoundView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var logoNotFound: UIImageView!
    @IBOutlet var labelNotFound: UILabel!
    
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
