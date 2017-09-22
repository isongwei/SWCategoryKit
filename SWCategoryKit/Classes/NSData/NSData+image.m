//
//  NSData+image.m
//  ZSW_qiubai
//
//  Created by iSongWei on 2017/8/21.
//  Copyright © 2017年 iSong. All rights reserved.
//

#import "NSData+image.h"

@implementation NSData (image)

+(NSData *)imageCompress:(UIImage *)image{
    
    NSData * data = UIImageJPEGRepresentation(image, 1.f);
    if (data.length > 100*1024) {
        
        if (data.length > 1024*1024) {
            data = UIImageJPEGRepresentation(image, .5f);
        }else if (data.length > 512 * 1024){
            data = UIImageJPEGRepresentation(image, .7f);
        }else if (data.length > 300 * 1024){
            data = UIImageJPEGRepresentation(image,.9f);
        }
       //小于300不管
    }
    return data;
}

@end
