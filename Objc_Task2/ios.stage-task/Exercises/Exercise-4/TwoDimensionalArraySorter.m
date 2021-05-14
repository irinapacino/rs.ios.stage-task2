#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if (array == nil || array.count == 0 || ![array[0] isKindOfClass:NSArray.class]){
        return @[];
    }
    
    NSMutableArray *numbersArray = [[NSMutableArray alloc] init];
    NSMutableArray *stringsArray = [[NSMutableArray alloc] init];

    for (NSArray *subArray in array) {
        if (subArray.count != 0)
            if ([subArray.firstObject isKindOfClass:NSNumber.class]) {
                [numbersArray addObjectsFromArray:(subArray)];
                [numbersArray sortUsingSelector:@selector(compare:)];
            } else {
                [stringsArray addObjectsFromArray:(subArray)];
                [stringsArray sortUsingSelector:@selector(compare:)];
            }
    }
    NSMutableArray *returnArray = [[NSMutableArray alloc] init];
    if (numbersArray.count == 0) {
        [returnArray addObjectsFromArray:stringsArray];
    } else if (stringsArray.count == 0) {
        [returnArray addObjectsFromArray:numbersArray];
    } else {
        [returnArray addObject:numbersArray];
        [returnArray addObject:[[stringsArray reverseObjectEnumerator] allObjects]];
    }
//    NSString *endString = [returnArray componentsJoinedByString:@""];
//    NSLog(@"%@", endString);
    NSArray *returnNSArray = [returnArray copy];
    return returnNSArray ;
}

@end
