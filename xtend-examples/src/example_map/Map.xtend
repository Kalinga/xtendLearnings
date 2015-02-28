package example_map


class Map {
	def mapIt(String str) {
		println ("mapIt(String str)")
		str.split("::").iterator.map([s|s.toLowerCase])
	}
	
	def mapItWithUpperCase(String str) {
		println ("mapItWithUpperCase(String str)")
		str.split("::").iterator.map([s| s.toFirstUpper])
	}
	
	def mapItWithFirstUpperAndPrint(String str) {
		println ("mapItWithFirstUpperAndPrint(String str)")
		println (str.split(" ").iterator.map([s| s.toFirstUpper + " "]).join)
	}	
	//TODO:	More stuff in lambda
	
}