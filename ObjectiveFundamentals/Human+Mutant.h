//
//  Human+Mutant.h
//  ObjectiveFundamentals
//
//  Created by Tyler Hu on 5/2/21.
//

#import "Human.h"
#import "Sense.h"

NS_ASSUME_NONNULL_BEGIN

@interface Human (Mutant) <Sense>
/*
 Properties in categories are a bit trickier with setter and getter in implementation, initialization requires:
 
 @property (retain, nonatomic) NSString* name;
 "strong" argument means you have a reference to an object and you will keep that object alive. As long as you hold that reference to the object in that property, that object will not be deallocated and released back into memory.
 */


@property (strong, nonatomic) NSString *power;

-(void) newPower: (NSString * ) newpower;


@end

NS_ASSUME_NONNULL_END
