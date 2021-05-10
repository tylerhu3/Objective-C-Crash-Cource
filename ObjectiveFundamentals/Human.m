//
//  Human.m
//  ObjectiveFundamentals
//
//  Created by Tyler Hu on 4/27/21.
//

#import "Human.h"

@implementation Human



-(instancetype) initWithName: (NSString*) newName
                     petName: (Animal*) pet{

    self = [super init];
    if(self){
        self.name = newName;
        self.pet = pet;
    }
    return self;
    
}

-(void) speak{
    NSLog(@"I am %@ and my pet's name is %@", self.name, [self.pet name]);
}

-(NSString *) talkToMe:(NSString *)myName{
    NSString *response = [NSString stringWithFormat:@"hello %@, I am a human", myName];
    return response;
}

-(int) getSum:(int)num1 nextNumber:(int)num2{
    return num1 + num2;
}

@end
