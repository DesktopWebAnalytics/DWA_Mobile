/*
	DWA_Mobile

	Link http://www.desktop-web-analytics.com
	Link https://github.com/DesktopWebAnalytics
	Licence http://www.gnu.org/licenses/gpl-3.0-standalone.html GPL v3 or later
*/
package skin.components
{
	import flash.display.GradientType;
	import flash.geom.Matrix;
	
	import mx.core.DPIClassification;
	
	import spark.skins.mobile.CalloutSkin;
	
	public class CalloutSkin extends spark.skins.mobile.CalloutSkin
	{
		public function CalloutSkin()
		{
			super();
			
			contentBackgroundInsetClass = null;
			
			useBackgroundGradient = false;
			
			contentCornerRadius = 2;
			
			borderThickness = 1;
			borderColor = 0x999999;
			
			arrowWidth = 10;
			arrowHeight = 10;
			
		}
		
		override protected function createChildren():void
		{
			arrow = new CalloutArrowSkin();
			arrow.id = "arrow";
			arrow.styleName = this;
			
			super.createChildren();
			
			addChild(arrow);
		}
	}
}