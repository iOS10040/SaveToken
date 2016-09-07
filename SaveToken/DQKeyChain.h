//
//  DQKeyChain.h
//  SaveToken
//
//  Created by ru dian on 16/9/7.
//  Copyright © 2016年 尚学. All rights reserved.
//

/*
 通常情况下，我们用NSUserDefaults存储数据信息，但是对于一些私密信息，比如密码、证书等等，就需要使用更为安全的keychain了。keychain里保存的信息不会因App被删除而丢失，在用户重新安装App后依然有效，数据还在。
 */
#import <Foundation/Foundation.h>

@interface DQKeyChain : NSObject


+ (void)save:(NSString *)service data:(id)data;

+ (id)load:(NSString *)service;

+ (void)deleteKeyData:(NSString *)service;

@end
