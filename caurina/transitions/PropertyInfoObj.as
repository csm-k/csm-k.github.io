package caurina.transitions {

	/**
	 * PropertyInfoObj
	 * An object containing the updating info for a given property (its starting value, and its final value)
	 *
	 * @author		Zeh Fernando
	 * @version		1.0.0
	 * @private
	 */

	public class PropertyInfoObj {
		
		public var valueStart				:Number;	// Starting value of the tweening (null if not started yet)
		public var valueComplete			:Number;	// Final desired value

		// ==================================================================================================================================
		// CONSTRUCTOR function -------------------------------------------------------------------------------------------------------------

		/**
		 * Initializes the basic PropertyInfoObj.
		 * 
		 * @param	p_valueStart		Number		Starting value of the tweening (null if not started yet)
		 * @param	p_valueComplete		Number		Final (desired) property value
		 */
		function PropertyInfoObj(p_valueStart:Number, p_valueComplete:Number) {
			valueStart		=	p_valueStart;
			valueComplete	=	p_valueComplete;
		}


		// ==================================================================================================================================
		// OTHER functions ------------------------------------------------------------------------------------------------------------------

		/**
		 * Clones this property info and returns the new PropertyInfoObj
		 *
		 * @param	omitEvents		Boolean			Whether or not events such as onStart (and its parameters) should be omitted
		 * @return 					TweenListObj	A copy of this object
		 */
		public function clone():PropertyInfoObj {
			var nProperty:PropertyInfoObj = new PropertyInfoObj(valueStart, valueComplete);
			return nProperty;
		}

		/**
		 * Returns this object described as a String.
		 *
		 * @return 					String		The description of this object.
		 */
		public function toString():String {
			var returnStr:String = "\n[PropertyInfoObj ";
			returnStr += "valueStart:" + String(valueStart);
			returnStr += ", valueComplete:" + String(valueComplete);
			returnStr += "]\n";
			return returnStr;
		}
		
	}

}