#include <Foundation/Foundation.hpp>
#import <Metal/Metal.hpp>

int main(int argc, const char * argv[]){
    @autoreleasepool {
        id<MTLDevice> device = MTLCreateSystemDefaultDevice();
        MetalAdder* adder = [[MetalAdder alloc] initWithDevice:device];
        [adder prepareData];
        [adder sendComputeCommand];
        NSLog(@"Execution finished");
    }
    return 0;
}