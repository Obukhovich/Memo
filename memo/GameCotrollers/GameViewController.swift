//
//  ViewController.swift
//  memo
//
//  Created by Artsiom Sadyryn on 12/27/17.
//  Copyright © 2017 Artsiom Sadyryn. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, CardViewDelegate {
 

    var cardViews = [UIView]()
    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game(cardPairs: 4)
        createGame(cardsNumber: 8)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func createGame(cardsNumber: Int) {
        let cardsContainer = CardsContainer()
        cardsContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cardsContainer, margins: UIEdgeInsetsMake(0, 0, 0, 0))
        
        
        for i in 0..<cardsNumber {
            
            let cardView = CardView(faceName: game.cards[i].imageName)
            cardView.delegate = self
            cardsContainer.addSubview(cardView)
            cardView.translatesAutoresizingMaskIntoConstraints = false
            
               cardViews.append(cardView)
            
        }
        cardsContainer.layout(views: cardViews)
    }
    
    func cardFlipped(_ card: CardView) {
        if let tappedIndex = indexFor(card: card) {
            game.cardFlipped(at: tappedIndex)
        }
    }
    
    
    
    private func indexFor(card: UIView?) -> Int? {
        guard let card = card else {
            return nil
        }
        return cardViews.index(of: card)
    }
    
}

