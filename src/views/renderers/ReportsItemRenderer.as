/*
	DWA_Mobile

	Link http://www.desktop-web-analytics.com
	Link https://github.com/DesktopWebAnalytics
	Licence http://www.gnu.org/licenses/gpl-3.0-standalone.html GPL v3 or later
*/
package views.renderers
{
	import flash.display.GradientType;
	import flash.geom.Matrix;
	
	import spark.components.LabelItemRenderer;
	
	public class ReportsItemRenderer extends LabelItemRenderer
	{
		public function ReportsItemRenderer()
		{
			super();
			cacheAsBitmap = true;
			opaqueBackground = 0xFFFFFF;
		}
		private var isHeader:Boolean;
		
		override public function set data(value:Object):void{
			if(value!=null){
				super.data = value;
				
				if(data.id == "header") {
					isHeader = true;
					this.height = 40;
					
					labelDisplay.setStyle("fontWeight", "bold");
				}else{
					isHeader = false;
					this.height = 50;
					
					labelDisplay.setStyle("fontWeight", "normal");
				}
			}
		}
		
		override protected function drawBackground(unscaledWidth:Number, unscaledHeight:Number):void
		{
			var backgroundColors:* = [0xFFFFFF, 0xFFFFFF];
			var downColor:* = getStyle("downColor");
			var selectionColor:* = getStyle("selectionColor");
			
			if(isHeader){
				// draw background
				
				var colors:Array = [0xF9F9F9, 0xDADADC];
				var alphas:Array = [1, 1];
				var ratios:Array = [0, 255];
				var matrix:Matrix = new Matrix();
				
				// draw gradient
				// rotation PI / 2
				matrix.createGradientBox(unscaledWidth, unscaledHeight, 1.57, 0, 0);
				graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, matrix);
				graphics.drawRect(0, 0, unscaledWidth, unscaledHeight);
				graphics.endFill();
				
				// draw bottom highlight
				graphics.beginFill(0xCCCCCC);
				graphics.drawRect(0, unscaledHeight-1, unscaledWidth, 1);
				graphics.endFill();
			}else{
				
				if(down){
					backgroundColors = [0xEEEEEE];
				}else if(selected){
					backgroundColors = [0xEEEEEE];
				}else{
					backgroundColors = [0xFFFFFF];
				}
				
				// draw background
				graphics.beginFill(backgroundColors[0]);
				graphics.drawRect(0, 0, unscaledWidth, unscaledHeight);
				graphics.endFill();
				
				// bottom separator
				graphics.beginFill(0xCCCCCC);
				graphics.drawRect(0, unscaledHeight-1, unscaledWidth, 1);
				graphics.endFill();
			}
		}
	}
}