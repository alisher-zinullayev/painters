//
//  WorkDetailsTableViewCell.swift
//  Painters
//
//  Created by Alisher Zinullayev on 03.08.2023.
//

import UIKit

//class PaintsDetailTableViewCell: UITableViewCell {
//
//    static let identifier = String(describing: PaintsDetailTableViewCell.self)
//
//    private let workPicture: UIImageView = {
//        let imageView = UIImageView()
//        imageView.contentMode = .scaleAspectFit
//        imageView.tintColor = .label
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()
//
//    private let workName: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.numberOfLines = 0
//        label.textColor = UIColor.black
//        label.font = UIFont.boldSystemFont(ofSize: 16)
//        label.textAlignment = .center
//        label.backgroundColor = UIColor.lightGray
//        return label
//    }()
//
//    private let workInfo: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.numberOfLines = 0
//        label.textColor = UIColor.gray
//        label.font = UIFont.systemFont(ofSize: 10)
//        return label
//    }()
//
//    private let containerView: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//
//
//    private var workInfoHeightConstraint: NSLayoutConstraint!
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        addSubviews()
//        setupUI()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    private func addSubviews() {
//        contentView.addSubview(containerView)
//        containerView.addSubview(workPicture)
//        containerView.addSubview(workName)
//        containerView.addSubview(workInfo)
//    }
//
//    private func setupUI() {
//
//        let containerViewConstraints = [
//            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
//            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
//            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
//        ]
//        let workPictureConstraints = [
//            workPicture.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
//            workPicture.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
//            workPicture.heightAnchor.constraint(equalToConstant: 300),
//            workPicture.widthAnchor.constraint(equalTo: workPicture.heightAnchor, multiplier: 1.0) // Maintain aspect ratio
//        ]
//        let workNameConstraints = [
//            workName.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
//            workName.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0),
//            workName.topAnchor.constraint(equalTo: workPicture.bottomAnchor, constant: 10),
//        ]
//        let workInfoConstraints = [
//            workInfo.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
//            workInfo.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0),
//            workInfo.topAnchor.constraint(equalTo: workName.bottomAnchor, constant: 8),
//            workInfo.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8)
//        ]
//        NSLayoutConstraint.activate(containerViewConstraints)
//        NSLayoutConstraint.activate(workPictureConstraints)
//        NSLayoutConstraint.activate(workNameConstraints)
//        NSLayoutConstraint.activate(workInfoConstraints)
//        workPicture.setContentHuggingPriority(.required, for: .vertical)
//        workPicture.setContentCompressionResistancePriority(.required, for: .vertical)
//
//        // Create a constraint for workInfo height
//        workInfoHeightConstraint = workInfo.heightAnchor.constraint(equalToConstant: 0)
//        workInfoHeightConstraint.priority = .defaultHigh
//        workInfoHeightConstraint.isActive = true
//
//    }
//
////    func configure(with painter: Painter, at indexPath: IndexPath) {
////        if indexPath.row < painter.works.count {
////            let workNameForRow = painter.works[indexPath.row]
////            workName.text = workNameForRow
////
////            if let workDescriptionForRow = painter.workDescription[workNameForRow] {
////                workInfo.text = workDescriptionForRow
////                workInfo.isHidden = !painter.isOpened //might
////            } else {
////                workInfo.text = "Description not available"
////                workInfo.isHidden = true //might
////            }
////
////            if let image = UIImage(named: painter.worksPicture[workNameForRow] ?? "") {
////                workPicture.image = image
////            }
////        }
////    }
//    func configure(with painter: Painter, at indexPath: IndexPath) {
//        let workNameForRow = painter.works[indexPath.row]
//        workName.text = workNameForRow
//
//        if let workDescriptionForRow = painter.workDescription[workNameForRow] {
//            workInfo.text = workDescriptionForRow
//            workInfo.isHidden = !painter.isOpened //might
//        } else {
//            workInfo.text = "Description not available"
//            workInfo.isHidden = true //might
//        }
//
//        if let image = UIImage(named: painter.worksPicture[workNameForRow] ?? "") {
//            workPicture.image = image
//        }
//        // Calculate the required height for the workInfo label based on its content
//        let workInfoSize = workInfo.sizeThatFits(CGSize(width: workInfo.frame.width, height: CGFloat.greatestFiniteMagnitude))
//
//        // Update the height constraint based on isOpened state and the calculated height
//        if painter.isOpened == true {
//            workInfoHeightConstraint.constant = workInfoSize.height
//        } else {
//            workInfoHeightConstraint.constant = 0
//        }
////        workInfoHeightConstraint.constant = painter.isOpened ? workInfoSize.height : 0
//
//        // Ensure the cell layout is updated
//        layoutIfNeeded()
//    }
//}


class PaintsDetailTableViewCell: UITableViewCell {
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

    private let showMoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 10)
        label.text = "Select For More Info"
        label.textAlignment = .center
        label.isUserInteractionEnabled = true
        return label
    }()
    
    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private var workInfoHeightConstraint: NSLayoutConstraint!

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
        containerView.addSubview(showMoreLabel)
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
            workName.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0),
            workName.topAnchor.constraint(equalTo: workPicture.bottomAnchor, constant: 10),
        ]
        let workInfoConstraints = [
            workInfo.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            workInfo.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0),
            workInfo.topAnchor.constraint(equalTo: workName.bottomAnchor, constant: 8),
            workInfo.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8)
        ]
        let showMoreLabelConstraints = [
            showMoreLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            showMoreLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            showMoreLabel.topAnchor.constraint(equalTo: workName.bottomAnchor, constant: 10),
            showMoreLabel.heightAnchor.constraint(equalToConstant: 20)
        ]
        
        NSLayoutConstraint.activate(showMoreLabelConstraints)
        NSLayoutConstraint.activate(containerViewConstraints)
        NSLayoutConstraint.activate(workPictureConstraints)
        NSLayoutConstraint.activate(workNameConstraints)
        NSLayoutConstraint.activate(workInfoConstraints)
        
//        workPicture.setContentHuggingPriority(.required, for: .vertical)
//        workPicture.setContentCompressionResistancePriority(.required, for: .vertical)

        workInfoHeightConstraint = workInfo.heightAnchor.constraint(equalToConstant: 20)
        workInfoHeightConstraint.priority = .defaultHigh
        workInfoHeightConstraint.isActive = true
    }

    func configure(painting painterName: String, with workName: String, description: String?, isOpened: Bool) {
        self.workName.text = workName
        workInfo.text = description ?? "Description not available"
        showMoreLabel.isHidden = isOpened
        workInfo.isHidden = !isOpened

        print("Loading image for key:", workName)
        if let image = UIImage(named: painterName) {
            workPicture.image = image
        } else {
            print("Image not found for key:", workName)
        }

        let workInfoSize = workInfo.sizeThatFits(CGSize(width: workInfo.frame.width, height: CGFloat.greatestFiniteMagnitude))
        workInfoHeightConstraint.constant = isOpened ? workInfoSize.height : 18
        
        layoutIfNeeded()
    }
}
