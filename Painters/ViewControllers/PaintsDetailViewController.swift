//
//  PainterDetailsViewController.swift
//  Painters
//
//  Created by Alisher Zinullayev on 02.08.2023.
//

import UIKit

final class PaintsDetailViewController: UIViewController {

//    var painter: Painter?
    var paintings: [Paintings]
    let moreInfoText = "Tap For Details >"
    private let worksTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(PaintsDetailTableViewCell.self, forCellReuseIdentifier: PaintsDetailTableViewCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
        return tableView
    }()

    init(paintings: [Paintings]) {
        self.paintings = paintings
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        setupTableView()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        worksTableView.frame = view.bounds
    }

    private func setupTableView() {
        view.addSubview(worksTableView)
        worksTableView.delegate = self
        worksTableView.dataSource = self
    }
}

extension PaintsDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PaintsDetailTableViewCell.identifier, for: indexPath) as! PaintsDetailTableViewCell
        cell.configure(painting: paintings[indexPath.row].workPicture, with: paintings[indexPath.row].workName, description: paintings[indexPath.row].workDescription, isOpened: false)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? PaintsDetailTableViewCell else { return }
        let selectedPainting = paintings[indexPath.row]
        selectedPainting.isOpened = !selectedPainting.isOpened
        if selectedPainting.isOpened == true {
            cell.configure(painting: selectedPainting.workPicture, with: selectedPainting.workName, description: selectedPainting.workDescription, isOpened: true)
        } else {
            cell.configure(painting: selectedPainting.workPicture, with: selectedPainting.workName, description: moreInfoText, isOpened: false)
        }
        tableView.beginUpdates()
        tableView.endUpdates()
        tableView.scrollToRow(at: indexPath, at: .top, animated: true)
    }
    
}
