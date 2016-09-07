//
//  DQUserDataManager.h
//  SaveToken
//
//  Created by ru dian on 16/9/7.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DQUserDataManager : NSObject
/**
 *  存储密码
 *
 *  @param password 密码内容
 */
+(void)savePassWord:(NSString *)password;

/**
 *  读取密码
 *
 *  @return 密码内容
 */
+(id)readPassWord;

/**
 *  删除密码数据
 */
+(void)deletePassWord;

@end
