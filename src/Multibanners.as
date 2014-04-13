package
{
	// Ane Extension Imports
	import com.codealchemy.ane.admobane.AdMobManager;
	import com.codealchemy.ane.admobane.AdMobPosition;
	import com.codealchemy.ane.admobane.AdMobSize;
	
	// Flash Imports
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;

	/** 
	 * Multibanners Class<br/>
	 * The class will construct The Multi Banners Example
	 *
	 **/
	public class Multibanners extends Sprite
	{
		private var adMobManager:AdMobManager;
		private var isShow:Boolean = false;
		
		/** 
		 * Multibanners Constructor
		 *
		 **/
		public function Multibanners()
		{
			// Init Sprite
			super();
			// Get the AdMobManager instance
			adMobManager = AdMobManager.manager;
			// Check if the Extension is supported
			if(adMobManager.isSupported){
				// Set Operation settings
				adMobManager.verbose = true;
				adMobManager.operationMode = AdMobManager.TEST_MODE;
				
				// Set AdMobId settings
				if (adMobManager.device == AdMobManager.IOS){
					adMobManager.bannersAdMobId = "ADMOB_IOS_BANNER_ID";
				}else{
					adMobManager.bannersAdMobId = "ADMOB_ANDROID_BANNER_ID";
				}
				
				// Set Targetting Settings [Optional]
				adMobManager.gender = AdMobManager.GENDER_MALE;
				adMobManager.birthYear = 1996;
				adMobManager.birthMonth = 1;
				adMobManager.birthDay = 24;
				adMobManager.isCDT = true;
				
				// Create Multiple Banners [In this case 2]
				adMobManager.createBanner(AdMobSize.BANNER,AdMobPosition.MIDDLE_CENTER,"BottomBanner1", null, true);
				adMobManager.createBanner(AdMobSize.BANNER,AdMobPosition.BOTTOM_CENTER,"BottomBanner2", null, true);
				
				// Function Button
				var txtFormat:TextFormat = new TextFormat(null,38);
				var funcButton:TextField = new TextField();
				funcButton.width = 200;
				funcButton.height = 48;
				funcButton.defaultTextFormat = txtFormat;
				funcButton.text = "SHOW/HIDE BANNERS";
				addChild(funcButton);
				funcButton.addEventListener(MouseEvent.CLICK,onClick);
				funcButton.x=100;
				funcButton.border=true;
				funcButton.y=100;
			}			
		}
		
		/** 
		 * Hide/Show function Event Listener
		 *
		 **/
		private function onClick(e:Event):void
		{
			adMobManager.showInterstitial();
			if(isShow){
				adMobManager.hideAllBanner();
				//adMobManager.hideBanner("BottomBanner1");
				//adMobManager.hideBanner("BottomBanner2");
				isShow = false;
			}else{
				adMobManager.showAllBanner();
				//adMobManager.showBanner("BottomBanner1");
				//adMobManager.showBanner("BottomBanner2");
				isShow = true;
			}
		}
	}
}