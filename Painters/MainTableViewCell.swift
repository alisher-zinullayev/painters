//
//  PainterDetailTableViewCell.swift
//  Painters
//
//  Created by Alisher Zinullayev on 02.08.2023.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    static let identifier = String(describing: MainTableViewCell.self)
    
    private let name: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let information: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 10)
        return label
    }()
    
    private let picture: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit // might be deleted
        imageView.clipsToBounds = true // might be deleted
        imageView.tintColor = .label
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews()
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        contentView.addSubview(name)
        contentView.addSubview(information)
        contentView.addSubview(picture)
    }
    
    private func setupUI() {
        let pictureConstraints = [
            picture.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            picture.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -30),
            picture.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            picture.widthAnchor.constraint(equalToConstant: contentView.bounds.width/2 + 40),
            picture.heightAnchor.constraint(equalToConstant: contentView.bounds.height)
        ]
        let nameConstraints = [
            name.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            name.topAnchor.constraint(equalTo: picture.bottomAnchor, constant: 0),
            name.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            name.widthAnchor.constraint(equalToConstant: contentView.bounds.width/2 + 40),
        ]
        let informationConstraints = [
            information.leadingAnchor.constraint(equalTo: picture.trailingAnchor, constant: 10),
            information.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            information.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ]
        NSLayoutConstraint.activate(pictureConstraints)
        NSLayoutConstraint.activate(nameConstraints)
        NSLayoutConstraint.activate(informationConstraints)
    }
    
    func configure(with painter: Painter) {
        name.text = painter.name
        information.text = painter.info
        if let image = UIImage(named: painter.picture) {
            picture.image = image
        }
    }
    
}
