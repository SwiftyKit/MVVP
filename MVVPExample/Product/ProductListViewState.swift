//
//  ProductListViewState.swift
//  MVVPExample
//
//  Created by code.swifty.cc on 2021/3/29.
//

import Foundation

enum ProductListViewState {
    case loading
    case loaded([Product])
    case error(Error)
}
