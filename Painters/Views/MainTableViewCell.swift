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
        label.numberOfLines = 0
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .center
        label.backgroundColor = UIColor.orange
        return label
    }()

    private let information: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.lineBreakMode = .byTruncatingTail
        label.font = UIFont.systemFont(ofSize: 10)
        return label
    }()

    private let picture: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.tintColor = .label
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews()
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        let containerConstraints = [
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ]

        let pictureConstraints = [
            picture.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 4),
            picture.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            picture.heightAnchor.constraint(equalToConstant: 300),
            picture.widthAnchor.constraint(equalToConstant: 200)
        ]
        let nameConstraints = [
            name.topAnchor.constraint(equalTo: picture.bottomAnchor, constant: 10),
            name.leadingAnchor.constraint(equalTo: picture.leadingAnchor),
            name.trailingAnchor.constraint(equalTo: picture.trailingAnchor),
            name.bottomAnchor.constraint(lessThanOrEqualTo: containerView.bottomAnchor, constant: -8)
//            name.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
        ]
        let informationConstraints = [
            information.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            information.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
            information.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: contentView.bounds.width/2 + 60),
            information.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
        ]
        NSLayoutConstraint.activate(containerConstraints)
        NSLayoutConstraint.activate(informationConstraints)
        NSLayoutConstraint.activate(pictureConstraints)
        NSLayoutConstraint.activate(nameConstraints)
    }
    
    private func addSubviews() {
        contentView.addSubview(containerView)
        containerView.addSubview(name)
        containerView.addSubview(information)
        containerView.addSubview(picture)
    }

    func configure(with painter: Painter) {
        name.text = painter.name
        information.text = painter.info
        if let image = UIImage(named: painter.picture) {
            picture.image = image
        }
    }

}
