//
//  Card.h
//  Matchismo
//
//  Created by APPLE on 13-8-18.
//  Copyright (c) 2013年 Yujiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString *contents;

@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnpayable) BOOL unplayable;

- (int)match:(NSArray *)otherCard;

@end
