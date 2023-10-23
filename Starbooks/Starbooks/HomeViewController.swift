//
//  HomeViewController.swift
//  Starbooks
//
//  Created by elly on 2023/10/09.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {

    // MARK: - Properties
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: .init())
    private var dataSource: UICollectionViewDiffableDataSource<Section, Item>?
    
    var viewModel: HomeViewModel = HomeViewModel()
    
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // set UI
        addSubViews()
        makeConstraints()
        
        // registration CollectionView
        collectionView.register(MenuSuggestionCollectionViewCell.self, forCellWithReuseIdentifier: MenuSuggestionCollectionViewCell.cellIdentifier)
        collectionView.setCollectionViewLayout(createLayout(), animated: true)
        
        // set DataSource
        setDataSource()
        
        // SetSnapShot
        setSnapShot()
    }
    
    private func setDataSource() {
        dataSource = UICollectionViewDiffableDataSource(collectionView: collectionView, cellProvider: { collectionView, indexPath, itemIdentifier in
            switch itemIdentifier {
            case .menuSuggestion(let menuItem):
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuSuggestionCollectionViewCell.cellIdentifier, for: indexPath) as? MenuSuggestionCollectionViewCell else { return UICollectionViewCell() }
                cell.config(menuItem.imageUrl, menuItem.title)
                return cell
            case .event(let eventItem):
                return UICollectionViewCell()
            }
        })
    }
    
    private func setSnapShot() {
        // menu suggestion section
        var snapShot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapShot.appendSections([Section(id: "MenuSuggestion")])
        let menuItems = viewModel.menuSuggestionItems.compactMap {  Item.menuSuggestion($0) }
        
        snapShot.appendItems(menuItems, toSection: Section(id: "MenuSuggestion"))
        dataSource?.apply(snapShot)
    }
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        
        let config = UICollectionViewCompositionalLayoutConfiguration()
        config.interSectionSpacing = 30
        
        // section index
        return UICollectionViewCompositionalLayout (sectionProvider: { [weak self] sectionIndex, _ in
            switch sectionIndex {
                case 0:
                    return self?.createMenuSection()
                default:
                    return self?.createMenuSection()
            }
        }, configuration: config)
    }
    
    private func createMenuSection() -> NSCollectionLayoutSection {
        // item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.8))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        // section
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        return section
    }
}

extension HomeViewController: UIComponentStyle {
    func addSubViews() {
        self.view.addSubview(collectionView)
    }
    
    func makeConstraints() {
        collectionView.snp.makeConstraints {
            $0.top.leading.trailing.bottom.equalToSuperview()
        }
    }
}
