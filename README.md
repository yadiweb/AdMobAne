Admob Native Extension for Adobe Air
=========

This  AdMob will add the support to use AdMob Mobile monetization platform with Adobe Air.
The Extension support Android Platform and iOS Platform.
Different Packages are available according to the needs'
- Android Only
- iOS Oly
- Both Platforms

This is the Only Native extension available for Adobe Air, which offer a complete coverage of everyfunction and possibility offer by AdMob.
Moreover the Extension has been compiled and maintained with the very latest AdMob SDK for either Android and iOS!

VERY IMPORTANT:
- Every Native Extension out there are make from old SDK, which, in the case of android, will not be accepted anymore in Google play from 1 Aug. 2014. While in iOS the old SDK will not pass the Application approval from Apple.

##What is AdMob?

AdMob is the world's largest mobile advertising platforms which serve more than 40 billion mobile banner and text ads per month across mobile Web sites and handset applications

http://www.google.com/ads/admob/

##Features:
- Allow Multiple Banners for Application
This permit two have, one, two or more banner visible and manageble in the same application view.
Or to have several banner pre-cached and show/hide on demand.

- Full Interstitial Ads Management and Pre-caching

- Full Request Customization

- Suppor Any adMob Size:
BANNER
MEDIUM_RECTANGLE
FULL_BANNER
LEADERBOARD
WIDE_SKYSCRAPER
SMART_BANNER
SMART_BANNER_PORT
SMART_BANNER_LAND

- Auto relative Docking for:
TOP_LEFT
TOP_CENTER
TOP_RIGHT
MIDDLE_LEFT
MIDDLE_CENTER
MIDDLE_RIGHT
BOTTOM_LEFT
BOTTOM_CENTER
BOTTOM_RIGHT

- Custom Absolute Position (off screen included)

- Extensive in line AsDoc Documentatio

- Full Extension Documentation in /Documentation

##Admob SDK Details
Android: Latest 4.3 Google Play services Library
iOS: AdMob SDK 6.8

##Further Info:
Android:
The Extension is builded using the latest Google Play service library which will guaranty the application approvale also after 01 Aug. 2014

iOS'
The Extension is builded using the latest 6.8 AdMob SDK, in xCode 5.1.1 using iOS SDK 7.1.which will guaranty the apple store approval for the application by Apple.

##Device Compatibility:
Android: From version 2.2
iOS: From version 4.3

##Install the library

Add the AdMob ANE library to your project.

In Flash Professional CS6:

  1. Create a new mobile project
  2. Choose File > Publish Settings... 
  3. Select the wrench icon next to 'Script' for 'ActionScriptSettings' 
  4. Select the Library Path tab. 
  5. Click 'Browse for Native Extension(ANE) File' and select the Mopub.ane file. 

In Flash Builder 4.6:

  1. Goto Project Properties
  2. Select Native Extensions under Actionscript Build Path
  3. Choose Add ANE... and navigate to the AdMob.ane file 
  4. Select Actionscript Build Packaging > Google Android, Apple IOS or Both
  5. Select the Native Extensions tab, and click the 'Package' check box next to the extension

In Flash Professional CS5.5 or Lower:

  1. Select File>PublishSettings>Flash>ActionScript 3.0 Settings 
  2. Select External Library Path
  3. Click Browseto SWC File
  4. Select the Mopub.swc

In Flash Builder 4.5:

  1. Goto Project Properties
  2. Select Action Script Build Path
  3. Select Add Swc
  4. Navigate to Mopub.swc and choose External Library type

In FlashDevelop:

  1. Copy the Mopub.swc file to your project folder.
  2. In the explorer panel, right click the .swc and select Add to Library.
  3. Right-click the swc file in the explorer, choose Options, and select External Library

##Usage
Import the library

```javascript
import com.codealchemy.ane.admobane.AdMobManager;
```

Get The Manager Instance

```javascript
var adMobManager:AdMobManager = AdMobManager.manager;
```

Check Extension Support

```javascript
if(adMobManager.isSupported){
	...
}
```

Set Manager Verbose Mode [Optional]
The Verbose mode will allow to have debug output from all places, AS, Java and iOS console
```javascript
adMobManager.verbose = true;

```

Set Manager Operation Mode [Optional... Untill Operation]
This setting will allow to set the extension in either test mode or operation mode.
By default the extension will work in Test Mode, when the application needs to be release it will be needed to switch the operation into Production mode
```javascript
adMobManager.operationMode = AdMobManager.TEST_MODE;

```

Set Common AdMob Unit Id for Banners [Reccomended]
Setting a common Admob Id will allow to avoid to specify an Id during banner creation
If the manager has an adMob unit id set all the banner wil be created using that id, unless a new id s specified during banner creation.
In that case the banner will use the id included on its parameters.
```javascript
adMobManager.bannersAdMobId = "ADMOB_BANNER_ID";

```

Set Common AdMob Unit Id for interstitial [Reccomended]
Same as for the banner the common AdMob Id for interstitial will be use for any interstitial created unless a new id is given during interstitial creation.
In that case the interstitial will use the id included on its parameters.
```javascript
adMobManager.interstitialAdMobId = "ADMOB_INTERSTITIAL_ID";

```

Set Gender Request Targeting [Optional]
This setting allow to create the ad request specifically for a gender.
Please note that all banner created after will included the given gender.
Request targetting option can be update before the creation of new banner for offer different target banner.
```javascript
adMobManager.gender = AdMobManager.GENDER_MALE;

```

Set Birthday Request Targeting [Optional]
This seting allow to have specific banner for a given age
If wish to set the age range then the year will be mandatory, while month and day can be optional.
If month and day are not specified the default valus of 1 will be used.
Request targetting option can be update before the creation of new banner for offer different target banner.
```javascript
adMobManager.birthYear = 1996;
adMobManager.birthMonth = 1;
adMobManager.birthDay = 24;

```

Set the Tag for child directed treatment [Optional]
This seting allow to have specific banner for a children in accordance to Children's Online Privacy Protection Act (COPPA).
Request targetting option can be update before the creation of new banner for offer different target banner.
```javascript
adMobManager.isCDT = true;

```

This getter will allow to get the current quantity of banner created and available in the Manager
```javascript
var num:int = adMobManager.bannersQuantity;

```

This getter will allow to get all the banners id of banner created and available in the Manager
```javascript
var bannerIds:Array = adMobManager.bannersNames;

```

This getter will allow to get the information of which device is currently in use (Android or iOS)
```javascript
var device:String = adMobManager.device;

```

Create an AdMob Banner in an relative Position
The parameter ae as follow:

Baner Size [Mandatory]
- Banner specific size

Baner Position [Mandatory]
- Banner specific Position

Baner Id [Optional]
- Usefull when you wish to create more than one banner.
If an id is not specified a random id will be generated

AdMobId [Optional]
- Banner speciic AdMobId, Usefull if you are tracking the banner result assigning individual id.
If an id is not specified the common id will be used.

AutoShow Option [Optional]
- This option allow to automaically show the banner one it is loaded.
The default value is set to false, so you can load the banner in cache and show it only on specific application phases
```javascript
adMobManager.createBannerAbsolute(AdMobSize.BANNER,AdMobPosition.BOTTOM_CENTER,"BottomBanner1", null, true);

Create an AdMob Banner in an absolute Position
The parameter ae as follow:

Baner Size [Mandatory]
- Banner specific size

Baner X Position [Mandatory]
- Banner specific X Position

Baner Y Position [Mandatory]
- Banner specific Y Position

Baner Id [Optional]
- Usefull when you wish to create more than one banner.
If an id is not specified a random id will be generated

AdMobId [Optional]
- Banner speciic AdMobId, Usefull if you are tracking the banner result assigning individual id.
If an id is not specified the common id will be used.

AutoShow Option [Optional]
- This option allow to automaically show the banner one it is loaded.
The default value is set to false, so you can load the banner in cache and show it only on specific application phases
```javascript
adMobManager.createBannerAbsolute(AdMobSize.BANNER,100, 200, "BottomBanner1", null, true);
```

Show a specific Banner
The function will allow to show a specific banner, recognised by its Id.
This is specifically usefull when your app wish to manage several ads.
The parameter ae as follow:
Baner Id [Mandatory]
- Specific banner Id for the banner to be show
```javascript
adMobManager.showBanner("BottomBanner1");

```

Hide a specific Banner
The function will allow to hide a specific banner, recognised by its Id.
This is specifically usefull when your app wish to manage several ads.
The parameter ae as follow:
Baner Id [Mandatory]
- Specific banner Id for the banner to be hide
```javascript
adMobManager.hideBanner("BottomBanner1");

```

Remove a specific Banner
The function will allow to remove a specific banner, recognised by its Id.
This is specifically usefull when your app wish to manage several ads.
The parameter ae as follow:
Baner Id [Mandatory]
- Specific banner Id for the banner to be removed
```javascript
adMobManager.removeBanner("BottomBanner1");

```

Show all existing hidden banners
The function will show all available banners
```javascript
adMobManager.showAllBanner();

```

Hide all existing hidden banners
The function will hide all available banners
```javascript
adMobManager.hideAllBanner();

```

Remove all existing hidden banners
The function will remove all available banners
```javascript
adMobManager.removeAllBanner();

```

Create the AdMob Interstitial
The parameter ae as follow:

AdMobId [Optional]
- Interstitial specific AdMobId.
If an id is not specified the common id will be used.

AutoShow Option [Optional]
- This option allow to automaically show the banner one it is loaded.
The default value is set to false, so you can load the banner in cache and show it only on specific application phases
* Please note, in iOS the Interstitial will ALWAYS be automatically show regardless of the setting.
```javascript
adMobManager.createInterstitial(null,true);
```

Cache the AdMob Interstitial
* Android Only
The parameter ae as follow:

AdMobId [Optional]
- Banner speciic AdMobId, Usefull if you are tracking the banner result assigning individual id.
If an id is not specified the common id will be used.

AutoShow Option [Optional]
- This option allow to automaically show the banner one it is loaded.
The default value is set to false, so you can load the banner in cache and show it only on specific application phases
* Please note, in iOS the Interstitial will ALWAYS be automatically show regardless of the setting.
```javascript
adMobManager.cacheInterstitial(null,true);
```

Cache the AdMob Interstitial
The function will show the cached AdMob Interstitial
* Android Only
```javascript
adMobManager.showInterstitial();

```

Check the Interstitial load state
```javascript
var state:Boolean = adMobManager.isInterstitialLoaded();

```

##Setup for Android

Update Your Application Descriptor

You'll need to be using the AIR 3.1 SDK or higher, include the extension in your Application Descriptor XML, and update the Android Manifest Additions with some settings.

Add the following settings in <manifest> tag.
```xml
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
```

Add the following settings in <application> tag.

```xml
<meta-data android:name="com.google.android.gms.version" android:value="4323000"/>
<activity android:name="com.google.android.gms.ads.AdActivity" android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize" />

```xml
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.READ_PHONE_STATE" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
```
