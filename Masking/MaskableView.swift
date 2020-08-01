//
//  MaskableView.swift
//  Masking
//
//  Created by Seyed Mojtaba Hosseini Zeidabadi on 8/2/20.
//  
//
//  StackOverflow: https://stackoverflow.com/story/mojtabahosseini
//  Linkedin: https://linkedin.com/in/MojtabaHosseini
//  GitHub: https://github.com/MojtabaHs
//

import UIKit

@IBDesignable
class MaskableView: UITextView {
    var maskImageView = UIImageView()

    @IBInspectable
    var maskImage: UIImage? {
        didSet {
            maskImageView.image = maskImage
            updateView()
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        updateView()
    }

    func updateView() {
        if maskImageView.image != nil {
            maskImageView.frame = bounds
            mask = maskImageView
        }
    }
}
