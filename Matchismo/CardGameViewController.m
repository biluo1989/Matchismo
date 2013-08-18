//
//  CardGameViewController.m
//  Matchismo
//
//  Created by APPLE on 13-8-18.
//  Copyright (c) 2013年 Yujiang. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtoms;
@property (nonatomic, strong) Deck *deck;
@end

@implementation CardGameViewController

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setCardButtoms:(NSArray *)cardButtoms
{
    _cardButtoms = cardButtoms;
    for (UIButton *cardButtom in cardButtoms){
        Card *card = [self.deck drawRondomCard];
        [cardButtom setTitle:card.contents forState:UIControlStateSelected];
    }
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
    self.flipCount++;
}

@end
