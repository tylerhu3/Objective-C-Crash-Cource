//
//  Human+Mutant.m
//  ObjectiveFundamentals
//
//  Created by Tyler Hu on 5/2/21.
//

#import "Human+Mutant.h"
#import <objc/runtime.h>


NSString const *key = @"my.very.unique.key";

@implementation Human (Mutant)



- (void)setPower:(NSString *)test
{
    objc_setAssociatedObject(self, &key, test, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)power
{
    return objc_getAssociatedObject(self, &key);
}

-(void) newPower: (NSString * ) newpower{
    NSLog(@"new power %@", newpower);
}



- (nonnull NSString *)mySenses {
    return @"touch, sight, hearing, smell and taste";
}

@end
