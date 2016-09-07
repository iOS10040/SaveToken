//
//  DQUserDataManager.m
//  SaveToken
//
//  Created by ru dian on 16/9/7.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import "DQUserDataManager.h"
#import "DQKeyChain.h"

@implementation DQUserDataManager

static NSString * const KEY_IN_KEYCHAIN = @"com.deqiang.app.allinfo";
static NSString * const KEY_PASSWORD = @"com.deqiang.app.password";

//存储密码
+(void)savePassWord:(NSString *)password
{
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:password forKey:KEY_PASSWORD];
    [DQKeyChain save:KEY_IN_KEYCHAIN data:usernamepasswordKVPairs];
}

//读取密码
+(id)readPassWord
{
    NSMutableDictionary *usernamepasswordKVPair = (NSMutableDictionary *)[DQKeyChain load:KEY_IN_KEYCHAIN];
    return [usernamepasswordKVPair objectForKey:KEY_PASSWORD];
}

//删除密码
+(void)deletePassWord
{
    [DQKeyChain deleteKeyData:KEY_IN_KEYCHAIN];
}

@end
