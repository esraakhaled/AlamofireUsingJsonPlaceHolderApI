//
//  ViewController.swift
//  AlamofireTest
//
//  Created by Esraa Khaled   on 06/09/2022.
//

import UIKit
import Alamofire

final class ViewController: UIViewController {
   private let url = "https://jsonplaceholder.typicode.com/"
    @IBOutlet weak var tableView: UITableView!
    private var photos: [Photo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 44
        //register cell
        self.tableView.register(UINib(nibName: "PhotosTableViewCell", bundle: nil), forCellReuseIdentifier: "PhotosTableViewCell")
        self.fetchData()
    }
    private func fetchData() {
        AF.request(self.url + "photos",method: .get).responseDecodable(of: [Photo].self) { [weak self] response in
            self?.photos = response.value ?? []
            self?.tableView.reloadData()
        }
    }

}
extension ViewController: UITableViewDelegate {
    
}
extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.photos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PhotosTableViewCell", for: indexPath) as? PhotosTableViewCell {
            cell.photo = self.photos[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
}
