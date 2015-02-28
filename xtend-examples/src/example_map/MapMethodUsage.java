package example_map;

import java.util.Iterator;

public class MapMethodUsage {
	static String name = "kalinga::bhusan::ray";
	static String name1 = "kalinga::bhusan::ray";
	
	public static void main(String[] args) {
	Map map = new Map();
	Iterator<String > mapedStr  = map.mapIt(name);
	while(mapedStr.hasNext()) {
		System.out.println(mapedStr.next());
	}
	
	Iterator<String > mapedStrUppercase = map.mapItWithUpperCase(name);
	while(mapedStrUppercase.hasNext()) {
		System.out.println(mapedStrUppercase.next());
	}
	
	map.mapItWithFirstUpperAndPrint("hi my name is kalinga bhusan");
	}

}
