//
//  Post.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 07.01.2024.
//

import Foundation
import SwiftUI
import SwiftData

@Model
final class Post: Identifiable {
    @Attribute(.unique)
    var id: String
    
    var title: String
    var descriptionRecipe: String
    
    @Attribute(.externalStorage)
    var image: Data
    var category: String
    var area: String
    var createdAt: Date
    
    init(id: String, title: String, descriptionRecipe: String, image: Data, category: String, area: String) {
        self.id = id
        self.title = title
        self.descriptionRecipe = descriptionRecipe
        self.image = image
        self.category = category
        self.area = area
        self.createdAt = Date()
    }
}

extension Post {
    static var example: Post {        
        let post = Post(id: "1", title: "Apple Frangipan Tart", descriptionRecipe: "Preheat the oven to 200C/180C Fan/Gas 6.rnPut the biscuits in a large re-sealable freezer bag and bash with a rolling pin into fine crumbs. Melt the butter in a small pan, then add the biscuit crumbs and stir until coated with butter. Tip into the tart tin and, using the back of a spoon, press over the base and sides of the tin to give an even layer. Chill in the fridge while you make the filling.rnCream together the butter and sugar until light and fluffy. You can do this in a food processor if you have one. Process for 2-3 minutes. Mix in the eggs, then add the ground almonds and almond extract and blend until well combined.rnPeel the apples, and cut thin slices of apple. Do this at the last minute to prevent the apple going brown. Arrange the slices over the biscuit base. Spread the frangipane filling evenly on top. Level the surface and sprinkle with the flaked almonds.rnBake for 20-25 minutes until golden-brown and set.rnRemove from the oven and leave to cool for 15 minutes. Remove the sides of the tin. An easy way to do this is to stand the tin on a can of beans and push down gently on the edges of the tin.rnTransfer the tart, with the tin base attached, to a serving plate. Serve warm with cream, cru00e8me fraiche or ice cream.", image: (UIImage(named: "DemoDishImage")?.pngData())!, category: "Dessert", area: "British")
        return post
    }
}
