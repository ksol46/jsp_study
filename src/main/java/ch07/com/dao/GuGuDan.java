package ch07.com.dao;

public class GuGuDan {
	
	int num = 5;
	//메소드
	public String process() {
		String a = "";
		for (int i=1; i<=9; i++){
			a += num + " x " + i + " = " + num*i + "<br>";
		}
		return a;
		
	}
}
