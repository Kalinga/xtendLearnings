package example_fold


class Fold {
	def foldIt(String str) {
		str.split("::").iterator.fold("It's me!", [ s,t | s+ "  "+ t])
	}
	
	def foldItWithUpperCase(String str) {
		str.split("::").iterator.fold("It's me!", [ s,t | s.toFirstUpper+ "  "+ t.toFirstUpper])
	}	
	
}