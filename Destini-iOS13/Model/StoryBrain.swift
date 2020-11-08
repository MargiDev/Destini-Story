//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let stories = [
       
        Story(
            title: "A beautiful daughter of a king was captured by a dragon and hidden in a ruined temple. A few days later, the king realized that his daughter was not dead yet, so he called for a mighty man to rescue her from the dragon, but for many days no one was able to save her daughter. And those who went there did not come back alive.",
            choice1: "I should go and get her back.", choice1Destination: 3,
            choice2: "I do not risk my life", choice2Destination: 1
        ),
        Story(
            title: "Because the dragon invaded and destroyed the crops, my parents wanted me to become a soldier and to rescue the king's daughter.",
            choice1: "I decided to follow them.", choice1Destination: 3,
            choice2: "I did not follow them.", choice2Destination: 2
        ),
        Story(
            title: "My family was struggling to grow crops.",
            choice1: "That's why I was forced to join the army.", choice1Destination: 3,
            choice2: "Sell everthing we have to survive.", choice2Destination: 1
        ),
        Story(
            title: "But while training as a soldier, I worked hard and became the best and the bravest. Also went to rescue the king's daughter from the dragon. And the king wanted to marry me to his daughter and want me to be king in the future.",
            choice1: "I agree without objection.", choice1Destination: 5,
            choice2: "I agree, but in my heart I do not want to be king.", choice2Destination: 4
        ),
        Story(
            title: "By want to be a farmer, living a simple life like before.",
            choice1: "Live happily ever after. The", choice1Destination: 0,
            choice2: "Have a beautiful daughter. End", choice2Destination: 0
        ),
        Story(
            title: "A few years later, The king became very ill and called me to get his place as a king. But I refused, so he told me to bring his nephew to reign in his place instead.",
            choice1: "Live happily ever after. The", choice1Destination: 0,
            choice2: "Have a beautiful daughter. End", choice2Destination: 0
        )
 

    ]
    
    var storyNumber = 0

    
    mutating func nextStory(_ userChoice: String) {
        
        if userChoice == stories[storyNumber].choice1  {
            
            storyNumber = stories[storyNumber].choice1Destination

        } else {
            
            storyNumber = stories[storyNumber].choice2Destination
        }
        
    }
    
    func choiceSeleted() -> Story {
        return stories[storyNumber]
    }
    
}
