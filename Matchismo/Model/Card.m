//
//  Card.m
//  Matchismo
//
//  Created by APPLE on 13-8-18.
//  Copyright (c) 2013年 Yujiang. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCard
{
    int score = 0;
    
    for (Card *card in otherCard) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }

    
    return score;
}

@end
