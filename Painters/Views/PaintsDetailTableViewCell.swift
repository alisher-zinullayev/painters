//
//  WorkDetailsTableViewCell.swift
//  Painters
//
//  Created by Alisher Zinullayev on 03.08.2023.
//

import UIKit

final class PaintsDetailTableViewCell: UITableViewCell {
    static let identifier = String(describing: PaintsDetailTableViewCell.self)

    private let workPicture: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .label
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let workName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .center
        label.backgroundColor = UIColor.lightGray
        return label
    }()

    private let workInfo: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 10)
        return label
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

    private func addSubviews() {
        contentView.addSubview(containerView)
        containerView.addSubview(workPicture)
        containerView.addSubview(workName)
        containerView.addSubview(workInfo)
    }

    private func setupUI() {
        let containerViewConstraints = [
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ]
        let workPictureConstraints = [
            workPicture.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            workPicture.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
            workPicture.heightAnchor.constraint(equalToConstant: 300),
            workPicture.widthAnchor.constraint(equalTo: workPicture.heightAnchor, multiplier: 1.0) // Maintain aspect ratio
        ]
        let workNameConstraints = [
            workName.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            workName.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            workName.topAnchor.constraint(equalTo: workPicture.bottomAnchor, constant: 10),
        ]
        let workInfoConstraints = [
            workInfo.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            workInfo.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0),
            workInfo.topAnchor.constraint(equalTo: workName.bottomAnchor, constant: 8),
            workInfo.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8)
        ]
        NSLayoutConstraint.activate(containerViewConstraints)
        NSLayoutConstraint.activate(workPictureConstraints)
        NSLayoutConstraint.activate(workNameConstraints)
        NSLayoutConstraint.activate(workInfoConstraints)
    }

    func configure(painting paintingName: String, with workName: String, description: String?, isOpened: Bool) {
        
        self.workName.text = workName
        
        if isOpened == false {
            workInfo.textColor = .red
            workInfo.textAlignment = .center
            workInfo.text = "Tap For Details >"
        } else {
            workInfo.textColor = .gray
            workInfo.textAlignment = .left
            workInfo.text = description
        }

        if let image = UIImage(named: paintingName) {
            workPicture.image = image
        } else {
            print("Image not found for key:", workName)
        }
    }
}
