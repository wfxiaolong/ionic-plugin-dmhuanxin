/********* dmhuanxin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface dmhuanxin : CDVPlugin {
  // Member variables go here.
}

- (void)echo:(CDVInvokedUrlCommand*)command;
- (void)init:(CDVInvokedUrlCommand*)command;
- (void)conversation:(CDVInvokedUrlCommand*)command;
- (void)chart:(CDVInvokedUrlCommand*)command;

@end

@implementation dmhuanxin

- (void)echo:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* message = [command.arguments objectAtIndex:0];

    if (message != nil && [message length] > 0) {
        message = @"来自iOS的消息......";
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:message];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

// 初始化接口
- (void)init:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* message = [command.arguments objectAtIndex:0];

    if (message != nil && [message length] > 0) {
        message = @"来自iOS的init消息......";
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:message];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

// 进入聊天列表接口
- (void)conversation:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* message = [command.arguments objectAtIndex:0];

    if (message != nil && [message length] > 0) {
        message = @"来自iOS的conversation消息......";
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:message];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

// 启动单聊页面
- (void)chart:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* message = [command.arguments objectAtIndex:0];

    if (message != nil && [message length] > 0) {
        message = @"来自iOS的chart消息......";
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:message];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


@end
 