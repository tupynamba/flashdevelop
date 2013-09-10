﻿package fl.motion
{
	/**
	 * The SimpleEase class allows you to control an animation with 
	 */
	public class SimpleEase implements ITween
	{
		/**
		 * @private
		 */
		private var _ease : Number;
		/**
		 * @private
		 */
		private var _target : String;

		/**
		 * A percentage between <code>-1</code> (100% ease in or acceleration) and <code>1</code> (100% ease out or deceleration). 
		 */
		public function get ease () : Number;
		/**
		 * @private (setter)
		 */
		public function set ease (value:Number) : void;
		/**
		 * The name of the animation property to target.
		 */
		public function get target () : String;
		/**
		 * @private (setter)
		 */
		public function set target (value:String) : void;

		/**
		 * Constructor for SimpleEase instances.
		 */
		function SimpleEase (xml:XML = null);
		/**
		 * @private
		 */
		private function parseXML (xml:XML = null) : SimpleEase;
		/**
		 * Calculates an interpolated value for a numerical property of animation, 
		 */
		public static function easeQuadPercent (time:Number, begin:Number, change:Number, duration:Number, percent:Number) : Number;
		/**
		 * Calculates an interpolated value for a numerical property of animation, 
		 */
		public static function easeNone (time:Number, begin:Number, change:Number, duration:Number) : Number;
		/**
		 * Calculates an interpolated value for a numerical property of animation,
		 */
		public function getValue (time:Number, begin:Number, change:Number, duration:Number) : Number;
	}
}