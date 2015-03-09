package example_flatten;

import java.util.ArrayList
import java.util.Calendar
import java.util.Locale
import java.util.TreeMap

class FlattenMethodUsage {
	static var name = "kalinga::bhusan::ray";
	static val name1 = "India::odisha::Bangalore";
	
	def static void  main(String[] args) {
		println ("Output of findFirst:")
		println( name.split("::").iterator.findFirst[it.startsWith("bhu")])
		
		println ("Output of findLast:")
		println( name.split("::").iterator.findLast[it.startsWith("bhu")])
		
		println ("Output of forEach:")
		name1.split("::").iterator.forEach[println(it)]
		
		val combinedIterator = name1.split("::").iterator + name.split("::").iterator
		println ("Output of 'combinedIterator' forEach:")
		combinedIterator.forEach[println (it)]
		
		var rayExists = name.split("::").iterator.exists[it == "ray"]
		System.out.printf ("Output of exist:" )
		println (rayExists)
		
		var isStartsWithLowerCase = name.split("::").iterator.forall[it.toFirstLower == it]
		println("Is there any string in name which is started with lower case? " + isStartsWithLowerCase)
		
		var uperCaseString = name1.split("::").filter[it.toFirstUpper == it]
		for (s:uperCaseString)
			println ("uperCaseString: " + s)
			
		var listOfString = new ArrayList()
		listOfString.add("FirstString")
		listOfString.add("SecondString")
		listOfString.add("")
		listOfString.add("ThirdString")
		listOfString.add("FourthString")
		listOfString.add(null)
		listOfString.add("FifthString")		
		listOfString.add(null)
		
		var anotherListOfString = new ArrayList()
		anotherListOfString.add("String1")
		anotherListOfString.add("String2")
		anotherListOfString.add("")
		anotherListOfString.add("ThirdString")
		anotherListOfString.add("String4")
		anotherListOfString.add(null)
		anotherListOfString.add("String5")		
		anotherListOfString.add(null)

		println ("Size of listOfString:" + listOfString.size)
		
		var nullFilteredListOfString = listOfString.filterNull
		
		println ("Size of nullFilteredListOfString:" + nullFilteredListOfString.size)
		
		var myList = new ArrayList<ArrayList<String>>();
		myList.add(listOfString)
		myList.add(anotherListOfString)
		
		var flattenedList = myList.map[filterNull].flatten
		println ("flattenedList size" +":" + flattenedList.size)
		
		var  l = new ArrayList();
		l.add(1);
		var it = l.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}	
		
		var count = 0
		var iterator = flattenedList.iterator
		while (iterator.hasNext) {
			println ("flattenedList element" + count + ":" + iterator.next)
			count = count + 1
		}
		
		flattenedList.forEach ([println(it)])
		
		println("flattenedList Join: " + flattenedList.join)
		println("flattenedList Join: " + flattenedList.join("Results...", ",",".", [it.toUpperCase])+ "\n")
		
		println("flattenedList reduce: " + flattenedList.reduce([x,y| x.toUpperCase + " " + y.toLowerCase]) + "\n")
		
		println("flattenedList toSet: " + flattenedList.toSet().size + "\n")
		
		var invertedMap = flattenedList.toInvertedMap([length])
		println ("invertedMap.values: " + invertedMap.values)
		println ("invertedMap.keys: " + invertedMap.keySet)
		println ("invertedMap value for 'String5': " + invertedMap.get("String5")+ "\n")
		
				
		var cal = Calendar.getInstance();
		var map = cal.getDisplayNames(Calendar.MONTH, Calendar.LONG, Locale.ENGLISH)
		System.out.println(map);
		
		var treeMap = new TreeMap(map)
		System.out.println(treeMap);		
	}	
}