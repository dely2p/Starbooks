//
//  ViewModelType.swift
//  Starbooks
//
//  Created by elly on 2023/10/09.
//

import Foundation

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(input: Input) -> Output
}
