package example_flatten;

import java.util.Iterator;

public class FlattenMethodUsage {
	static String name = "kalinga::bhusan::ray";
	static String name1 = "kalinga::bhusan::ray";
	
	public static void main(String[] args) {
	Flatten flat = new Flatten();
	Iterator<String > flatStr  = flat.flatIt(name);
	while(flatStr.hasNext()) {
		System.out.println(flatStr.next());
	}	
}
