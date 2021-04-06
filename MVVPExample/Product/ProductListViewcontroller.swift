//
//  ProductListViewcontroller.swift
//  MVVPExample
//
//  Created by code.swifty.cc on 2021/3/29.
//

import UIKit

protocol ProductListUserInterface: AnyObject {
    func render(_ state: ProductListViewState)
}

class ProductListViewcontroller: UIViewController {
    
    var presenter: ProductListPresenter?
    
    static public func instantiate() -> ProductListViewcontroller {
        let viewController = ProductListViewcontroller()
        let presenter = ProductListPresenter(interface: viewController)
        viewController.presenter = presenter
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        presenter?.loadProducts()
    }
    
    func showLoading(_ loading: Bool) {
        
    }
    
    func showError(_ error: Error) {
        
    }
    
    // reload products in tableview/collectionview
    func reload(with products: [Product]) {
        
    }
}

extension ProductListViewcontroller: ProductListUserInterface {
    func render(_ state: ProductListViewState) {
        switch state {
        case .loading:
            self.showLoading(true)
        case .loaded(let products):
            self.reload(with: products)
        case .error(let error):
            self.showError(error)
        }
    }
}
