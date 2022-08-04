//
//  CartManager.swift
//  first_ios_app
//
//  Created by Debdutta Panda on 04/08/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func clear(){
        products.removeAll()
    }
    
    func isAdded(product: Product)-> Bool{
        return products.contains { Product in
            Product.id==product.id
        }
    }
    
    func addProduct(product: Product){
        products.append(product)
        total += product.price
    }
    
    func addOrRemove(product: Product){
        if isAdded(product: product) {
            removeFromProduct(product: product)
        }
        else{
            addProduct(product: product)
        }
    }
    
    func removeFromProduct(product: Product){
        products = products.filter{
            $0.id != product.id
        }
        total -= product.price
    }
}
