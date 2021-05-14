#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if (numbersArray == nil || numbersArray.count == 0) {
        return @"";
    }
    NSMutableString *result = [[NSMutableString alloc] init];
    for (NSInteger i = 0; i < 4; i++) {
        NSInteger id = 0;
        if (i <= numbersArray.count-1) {
            id = [numbersArray[i] intValue];
        }
        if (id > 255) {
            return  @"The numbers in the input array can be in the range from 0 to 255.";
        } else if (id < 0) {
            return @"Negative numbers are not valid for input.";
        } else {
            [result appendFormat:@"%ld.", id];
        }
    }
    
    return [result substringToIndex:[result length] - 1];
}

@end
