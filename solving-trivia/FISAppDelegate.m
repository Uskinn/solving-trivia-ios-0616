//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self solveTrivia];
    
    
    // Override point for customization after application launch.
    return YES;
}

/*

Write your method here

*/
- (NSString *)solveTrivia{
 
    NSDictionary *statesAndCapitals = @{@"Alabama": @"Montgomery",
                                        @"Alaska": @"Juneau",
                                        @"Arizona": @"Phoenix",
                                        @"Arkansas": @"Little Rock",
                                        @"California": @"Sacramento",
                                        @"Colorado": @"Denver",
                                        @"Connecticut": @"Hartford",
                                        @"Delaware": @"Dover",
                                        @"Florida": @"Tallahassee",
                                        @"Georgia": @"Atlanta",
                                        @"Hawaii": @"Honolulu",
                                        @"Idaho": @"Boise",
                                        @"Illinois": @"Springfield",
                                        @"Indiana": @"Indianapolis",
                                        @"Iowa": @"Des Moines",
                                        @"Kansas": @"Topeka",
                                        @"Kentucky": @"Frankfort",
                                        @"Louisiana": @"Baton Rouge",
                                        @"Maine": @"Augusta",
                                        @"Maryland": @"Annapolis",
                                        @"Massachusetts": @"Boston",
                                        @"Michigan": @"Lansing",
                                        @"Minnesota": @"St. Paul",
                                        @"Mississippi": @"Jackson",
                                        @"Missouri": @"Jefferson City",
                                        @"Montana": @"Helena",
                                        @"Nebraska": @"Lincoln",
                                        @"Nevada": @"Carson City",
                                        @"New Hampshire": @"Concord",
                                        @"New Jersey": @"Trenton",
                                        @"New Mexico": @"Santa Fe",
                                        @"New York": @"Albany",
                                        @"North Carolina": @"Raleigh",
                                        @"North Dakota": @"Bismarck",
                                        @"Ohio": @"Columbus",
                                        @"Oklahoma": @"Oklahoma City",
                                        @"Oregon": @"Salem",
                                        @"Pennsylvania": @"Harrisburg",
                                        @"Rhode Island": @"Providence",
                                        @"South Carolina": @"Columbia",
                                        @"South Dakota": @"Pierre",
                                        @"Tennessee": @"Nashville",
                                        @"Texas": @"Austin",
                                        @"Utah": @"Salt Lake City",
                                        @"Vermont": @"Montpelier",
                                        @"Virginia": @"Richmond",
                                        @"Washington": @"Olympia",
                                        @"West Virginia": @"Charleston",
                                        @"Wisconsin": @"Madison",
                                        @"Wyoming": @"Cheyenne"};
    
    
    
        //Loop over dictionary and retrieve key
    for (NSString *state in statesAndCapitals) {
        
        // Preperation for comparison
        NSString *aState = state;
        NSString *aCapital = statesAndCapitals[aState];
      
        NSString *spacelessState = [aState stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *spacelessCapital = [aCapital stringByReplacingOccurrencesOfString:@" " withString:@""];
        
        NSString *lowerCaseState = [spacelessState lowercaseString];
        NSString *lowerCaseCapitle = [spacelessCapital lowercaseString];
        
        NSMutableArray *characterState = [NSMutableArray array];
        for (NSUInteger i=0; i<[lowerCaseState length]; i++) {
          NSString *chState = [lowerCaseState substringWithRange:NSMakeRange(i, 1)];
            [characterState addObject:chState];
        }
        
        NSMutableArray *characterCapitale = [NSMutableArray array];
        for (NSUInteger i=0; i<[lowerCaseCapitle length]; i++) {
            NSString *chCapitale = [lowerCaseCapitle substringWithRange:NSMakeRange(i, 1)];
            [characterCapitale addObject:chCapitale];
        }
        
        NSSet *setState = [NSSet setWithArray:characterState];
        NSSet *setCapitale = [NSSet setWithArray:characterCapitale];
        
        // Compare objects
        BOOL charMatchFound = [setState intersectsSet:setCapitale];
        
        if (!charMatchFound) {
            
            NSLog(@"state: %@", aState);
            return aState;
            
        }
        
        
   
    }
    return @"";
    
}

@end
