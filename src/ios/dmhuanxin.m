/********* dmhuanxin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface dmhuanxin : CDVPlugin {
  // Member variables go here.
}

- (void)echo:(CDVInvokedUrlCommand*)command;

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

@end
 