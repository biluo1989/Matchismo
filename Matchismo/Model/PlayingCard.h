//
//  PlayingCard.h
//  Matchismo
//
//  Created by APPLE on 13-8-18.
//  Copyright (c) 2013年 Yujiang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
