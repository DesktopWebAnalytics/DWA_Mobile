/*
	DWA_Mobile

	Link http://www.desktop-web-analytics.com
	Link https://github.com/DesktopWebAnalytics
	Licence http://www.gnu.org/licenses/gpl-3.0-standalone.html GPL v3 or later
*/
package skin.components
{
	import spark.skins.mobile.supportClasses.CalloutArrow;
	
	public class CalloutArrowSkin extends CalloutArrow
	{
		public function CalloutArrowSkin()
		{
			super();
			
			gap=0;
			
			useBackgroundGradient = false;
			
			borderThickness = 1;
			borderColor = 0x999999;
		}
	}
}