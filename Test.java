package hasso;

import java.sql.*; 

public class Test {
	
	public static void main(String[] args) throws Exception {
		
		DAOexample dao = new DAOexample();
		student s1= new student("David","de Gea","Spain");  
		int r = dao.addStudent(s1);
		dao.showData();
		
		System.out.println("Row affected "+r);
	}

}
