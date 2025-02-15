//
//  AlbumHomeViewController.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/01/20.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit


class AlbumHomeViewController: UIViewController, OnClickDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var basicHeader: BasicHeader!
    @IBOutlet weak var plusButton: UIButton!
    
    var albumHomeViewModel : AlbumHomeViewModel?
    var useCase : AlbumHomeUseCase? = AlbumHomeUseCase()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        useCase?.makeQueue("1", CommunicationType.getAlbumHome)
        basicHeader.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "AlbumViewCell", bundle: nil), forCellReuseIdentifier: "albumViewCell")
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.separatorStyle = .none
        self.view.bringSubview(toFront: plusButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func onClick(_ sender: AnyObject?) {
        print("aaaa")
    }
    
    @IBAction func addAlbum(_ sender: Any) {
        let storyboard = UIStoryboard(name: "MakeAlbum", bundle: nil)
        let detailVC = storyboard.instantiateViewController(withIdentifier: "MakeAlbumViewController") as! MakeAlbumViewController
        present(detailVC, animated: true, completion: nil)
    }
}
extension AlbumHomeViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "albumViewCell") as! AlbumViewCell
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // nothing to do
    }
    
}
