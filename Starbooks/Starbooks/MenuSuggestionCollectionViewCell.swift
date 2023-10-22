//
//  MenuSuggestionCollectionViewCell.swift
//  Starbooks
//
//  Created by elly on 2023/10/09.
//

import UIKit
import SnapKit
import Then
import Kingfisher

class MenuSuggestionCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Identifier
    
    static let cellIdentifier: String = "MenuSuggestionCollectionViewCell"
    
    
    // MARK: - Properties
    
    private let menuImageView: UIImageView = UIImageView().then {
        $0.layer.cornerRadius = 18
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.black.cgColor
    }
    private let titleLabel: UILabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    }
    
    
    // MARK: - Initialize
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubViews()
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Configuration
    
    func config(_ imageUrl: String, _ title: String) {
        menuImageView.kf.setImage(with: URL(string: imageUrl))
        titleLabel.text = title
    }
}


// MARK: - set UI

extension MenuSuggestionCollectionViewCell: UIComponentStyle {
    func addSubViews() {
        self.addSubview(menuImageView)
        self.addSubview(titleLabel)
    }
    
    func makeConstraints() {
        menuImageView.snp.makeConstraints {
            $0.top.leading.equalToSuperview().offset(5)
            $0.trailing.equalToSuperview().offset(-5)
            $0.width.height.equalTo(100)
        }
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(menuImageView.snp.bottom).offset(5)
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-5)
            $0.height.equalTo(20)
        }
    }
}
