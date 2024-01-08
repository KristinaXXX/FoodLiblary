//
//  PostData.swift
//  FoodLiblary
//
//  Created by Kr Qqq on 07.01.2024.
//

import Foundation
import SwiftUI

extension Post {
    
    static let data: [Post] = make()
    static func make() -> [Post] {
        var postArray: [Post] = []
        
        postArray.append(Post(id: "1", title: "Apple Frangipan Tart", description: "Preheat the oven to 200C/180C Fan/Gas 6.rnPut the biscuits in a large re-sealable freezer bag and bash with a rolling pin into fine crumbs. Melt the butter in a small pan, then add the biscuit crumbs and stir until coated with butter. Tip into the tart tin and, using the back of a spoon, press over the base and sides of the tin to give an even layer. Chill in the fridge while you make the filling.rnCream together the butter and sugar until light and fluffy. You can do this in a food processor if you have one. Process for 2-3 minutes. Mix in the eggs, then add the ground almonds and almond extract and blend until well combined.rnPeel the apples, and cut thin slices of apple. Do this at the last minute to prevent the apple going brown. Arrange the slices over the biscuit base. Spread the frangipane filling evenly on top. Level the surface and sprinkle with the flaked almonds.rnBake for 20-25 minutes until golden-brown and set.rnRemove from the oven and leave to cool for 15 minutes. Remove the sides of the tin. An easy way to do this is to stand the tin on a can of beans and push down gently on the edges of the tin.rnTransfer the tart, with the tin base attached, to a serving plate. Serve warm with cream, cru00e8me fraiche or ice cream.", image: Image(systemName: "birthday.cake.fill"), category: CategoryFood.take(title: "Dessert"), area: AreaFood.take(title: "British")))
        
        postArray.append(Post(id: "2", title: "Apple & Blackberry Crumble", description: "Heat oven to 190C/170C fan/gas 5. Tip the flour and sugar into a large bowl. Add the butter, then rub into the flour using your fingertips to make a light breadcrumb texture. Do not overwork it or the crumble will become heavy. Sprinkle the mixture evenly over a baking sheet and bake for 15 mins or until lightly coloured.rnMeanwhile, for the compote, peel, core and cut the apples into 2cm dice. Put the butter and sugar in a medium saucepan and melt together over a medium heat. Cook for 3 mins until the mixture turns to a light caramel. Stir in the apples and cook for 3 mins. Add the blackberries and cinnamon, and cook for 3 mins more. Cover, remove from the heat, then leave for 2-3 mins to continue cooking in the warmth of the pan.rnTo serve, spoon the warm fruit into an ovenproof gratin dish, top with the crumble mix, then reheat in the oven for 5-10 mins. Serve with vanilla ice cream.", image: Image(systemName: "cup.and.saucer.fill"), category: CategoryFood.take(title: "Dessert"), area: AreaFood.take(title: "British")))
        
        postArray.append(Post(id: "3", title: "Apam balik", description: "Mix milk, oil and egg together. Sift flour, baking powder and salt into the mixture. Stir well until all ingredients are combined evenly.rnrnSpread some batter onto the pan. Spread a thin layer of batter to the side of the pan. Cover the pan for 30-60 seconds until small air bubbles appear.rnrnAdd butter, cream corn, crushed peanuts and sugar onto the pancake. Fold the pancake into half once the bottom surface is browned.rnrnCut into wedges and best eaten when it is warm.", image: Image(systemName: "carrot.fill"), category: CategoryFood.take(title: "Dessert"), area: AreaFood.take(title: "Malaysian")))
        
        postArray.append(Post(id: "4", title: "Ayam Percik", description: "In a blender, add the ingredients for the spice paste and blend until smooth.rnOver medium heat, pour the spice paste in a skillet or pan and fry for 10 minutes until fragrant. Add water or oil 1 tablespoon at a time if the paste becomes too dry. Don't burn the paste. Lower the fire slightly if needed.rnAdd the cloves, cardamom, tamarind pulp, coconut milk, water, sugar and salt. Turn the heat up and bring the mixture to boil. Turn the heat to medium low and simmer for 10 minutes. Stir occasionally. It will reduce slightly. This is the marinade/sauce, so taste and adjust seasoning if necessary. Don't worry if it's slightly bitter. It will go away when roasting.rnWhen the marinade/sauce has cooled, pour everything over the chicken and marinate overnight to two days.rnPreheat the oven to 425 F.rnRemove the chicken from the marinade. Spoon the marinade onto a greased (or aluminum lined) baking sheet. Lay the chicken on top of the sauce (make sure the chicken covers the sauce and the sauce isn't exposed or it'll burn) and spread the remaining marinade on the chicken. Roast for 35-45 minutes or until internal temp of the thickest part of chicken is at least 175 F.rnLet chicken rest for 5 minutes. Brush the chicken with some of the oil. Serve chicken with the sauce over steamed rice (or coconut rice).", image: Image(systemName: "takeoutbag.and.cup.and.straw.fill"), category: CategoryFood.take(title: "Chicken"), area: AreaFood.take(title: "Malaysian")))
        
        return postArray
    }
}
