# Xamarin.Android.GooglePlayServices.Binding #

## About ##

This project provides bindings for the Google Play Services library built against the latest version of the V4 support library. Currently **revision 18**.

 

## Build instructions ##
 * Place Xamarin.Android.Support.v4-r18.dll into the ThirdParty folder. It can be downloaded from the Xamarin component store.
 * Set the `ANDROID_SDK_HOME` environment variable to the root of your Android SDK folder.
 * Build the play services library in eclipse.  ( See below )
 * Run psake.cmd

## Building the library in eclipse
 * In eclipse. File -> New -> Project
 * Android project from existing code
 * Select `ANDROID_SDK_HOME\extras\google\google_play_services\libproject\google-play-services_lib`
 * Press finish. The project will build automatically
 * bin and res folders should have been created. 

## Links ##
* [Xamarin Store Android Support v4 (Rev18)](http://components.xamarin.com/view/xamandroidsupportv4-18/)
* [Google Play Services Doucmentation](http://developer.android.com/google/play-services/index.html)
