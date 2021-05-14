#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 result = 0;
//    int n1 = n;
    NSMutableString *binaryRepresentation = [[NSMutableString alloc] init];
    NSMutableString *reversedBinaryRepresentation = [[NSMutableString alloc] init];
    for (NSInteger i = 0; i < 8; i++) {
        [binaryRepresentation insertString:([NSString stringWithFormat:@"%d", n%2]) atIndex:0];
        [reversedBinaryRepresentation appendString:([NSString stringWithFormat:@"%d", n%2])];
        n /= 2;
    }
//    NSLog(@"%d", n1);
//    NSLog(@"%@", binaryRepresentation);
//    NSLog(@"%@", reversedBinaryRepresentation);
    for (NSInteger i = 0; i < 8; i++) {
        NSString *singleCharSubstring = [reversedBinaryRepresentation substringWithRange:NSMakeRange((7-i), 1)];
        NSInteger *x = [singleCharSubstring intValue];
        if (x == 1) {
        result += pow(2, i);
//        NSLog(@"2ˆ%d = %.f, ++ %d",i, (pow(2, i)), result);
        }
    }
    NSLog(@"%d", result);
    
    return result;
}
