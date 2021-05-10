//
//  Animal.m
//  ObjectiveFundamentals
//
//  Created by Tyler Hu on 4/24/21.
//

#import "Animal.h"

@implementation Animal

-(instancetype) init
{
    self = [super init];
    if(self){
        self.name = @"No Name";
    }
    return self;
}

-(instancetype) initWithName:(NSString *)defaultName
{
    self = [super init];
    if(self){
        self.name = defaultName;
    }
    return self;
}

-(void) getInfo{
    NSLog(@"Random Info");
}

-(float) weightInKg:(float)weightInLbs{
    return weightInLbs * 0.4535;
}

-(NSString *) talkToMe:(NSString *)myName{
    NSString *response = [NSString stringWithFormat:@"hello %@", myName];
    return response;
}

@end
