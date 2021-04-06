//
//  ProductListPresenter.swift
//  MVVPExample
//
//  Created by code.swifty.cc on 2021/3/29.
//

import Foundation

class ProductListPresenter {
    
    private weak var userInterface: ProductListUserInterface?
    
    init(interface: ProductListUserInterface) {
        self.userInterface = interface
    }

    func loadProducts() {
        userInterface?.render(.loading)
        // simulate load products from backend server
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.userInterface?.render(.loaded([]))
        }
    }
}
