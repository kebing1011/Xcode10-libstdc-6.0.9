#!/bin/bash
# here is desption.
# author : makebing
# version : 1.0


install_lib()
{
	cp 1/* "/Applications/$1/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/CoreSimulator/Profiles/Runtimes/iOS.simruntime/Contents/Resources/RuntimeRoot/usr/lib/"
	cp 2/* "/Applications/$1/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib/"
	cp 3/* "/Applications/$1/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/lib/"
	cp 4/* "/Applications/$1/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/lib/"
}

XCODE_APP="Xcode.app"

read -p "Your Xcode 10 name is \"${XCODE_APP}\" in /Applications? [yes/no]:" MY_INPUT


# check version
if [ "$MY_INPUT" = "yes" -o "$MY_INPUT" = "y" ];then
	install_lib "${XCODE_APP}"
	echo "Done."
else
	read -p "input your Xcode 10 app name:" MY_INPUT
	if [ -d "/Applications/${MY_INPUT}" ];then
		install_lib "${MY_INPUT}"
		echo "Done."
	else
		echo "${MY_INPUT} is not exist."
	fi
fi






