//
//  AlbumHomeBuilder.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/04/30.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import UIKit

// return viewcontroller
struct AlbumHomeBuilder {
    func build() -> UIViewController {
        //let wireframe = AlbumHomeWireframeImpl()
        let viewController = UIStoryboard(name: "AlbumHome", bundle: nil).instantiateViewController(withIdentifier: "AlbumHome") as! AlbumHomeViewController
        //let useCase = AlbumHomeUseCaseImpl(albumHomeRepository: AlbumHomeRepository(num: "1"))
        //let presenter = AlbumHomePresenterImpl(wireframe: wireframe, useCase: useCase)
        //viewController.inject(presenter: presenter)
        //wireframe.viewController = viewController
        return viewController
    }
}

struct MakeAlbumBuilder {
    func build() -> UIViewController {
        let viewController = UIStoryboard(name: "MakeAlbum", bundle: nil).instantiateViewController(withIdentifier: "AlbumHome") as! MakeAlbumViewController
        return viewController
    }
}
