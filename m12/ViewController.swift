//
//  ViewController.swift
//  m12
//
//  Created by Matvey Alesin on 16.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Views
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.Image.star
        imageView.tintColor = Constants.Colors.starGold
        return imageView
    }()
    
    private lazy var label1: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.cat
        label.textColor = Constants.Colors.appleRed
        label.font = Constants.Fonts.hackFont
        return label
    }()
    
    private lazy var label2: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.dog
        label.textColor = Constants.Colors.noirBlack
        label.font = Constants.Fonts.isocpeurFont
        return label
    }()
    
    private lazy var label3: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.lion
        label.textColor = Constants.Colors.starGold
        label.font = Constants.Fonts.jetbrainsMonoFont
        return label
    }()
    
    private lazy var label4: UILabel = {
        let label = UILabel()
        let label4Text = Constants.Text.helloWorld
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: label4Text)
        if let spaceIndex = label4Text.firstIndex(of: " ") {
            attributedString.addAttribute(
                .foregroundColor,
                value: UIColor.systemBlue,
                range: NSRange(label4Text.startIndex ..< spaceIndex, in: label4Text)
            )
            attributedString.addAttribute(
                .foregroundColor,
                value: UIColor.systemRed,
                range: NSRange(spaceIndex ..< label4Text.endIndex, in: label4Text)
            )
        }
        label.attributedText = attributedString
        label.font = Constants.Fonts.hackFont
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 16
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
        stackView.addArrangedSubview(label4)
        stackView.addArrangedSubview(imageView)
        return stackView
    }()
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    //MARK: - PrivateRealization

    private func setupViews() {
        view.addSubview(stackView)
    }
    
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        stackView.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
}

