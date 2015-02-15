package example_fold;

public class FoldMethodUsage {
	static String name = "kalinga::bhusan::ray";
	
	public static void main(String[] args) {
	Fold fold = new Fold();
	String foldedStr = fold.foldIt(name);
	System.out.println(foldedStr);
	
	String foldedStrUppercase = fold.foldItWithUpperCase(name);
	System.out.println(foldedStrUppercase);
	}

}
