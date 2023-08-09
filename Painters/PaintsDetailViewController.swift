//
//  PainterDetailsViewController.swift
//  Painters
//
//  Created by Alisher Zinullayev on 02.08.2023.
//

import UIKit

final class PaintsDetailViewController: UIViewController {

    var painter: Painter?
    
    init(painter: Painter? = nil) {
        self.painter = painter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let worksTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(PaintsDetailTableViewCell.self, forCellReuseIdentifier: PaintsDetailTableViewCell.identifier) //adasdadsasdasdasddd
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = UITableView.automaticDimension
        return tableView
    }()
    
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
        
        guard let painter = painter else {
            return 0
        }
        return painter.works.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PaintsDetailTableViewCell.identifier, for: indexPath) as! PaintsDetailTableViewCell
        cell.configure(with: painter!, at: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        if let cell = tableView.cellForRow(at: indexPath) as? PaintsDetailTableViewCell,
           let painter = painter {
            painter.isOpened.toggle()
            cell.configure(with: painter, at: indexPath)
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
