package ssb_pack;

import java.util.*;
import java.util.ArrayList;

import java.util.ArrayList;

//interface
interface Candidate 
{
	String getdetails(int k);
}

//parent class
class Details implements Candidate
{
	public ArrayList<String> detail=new ArrayList<String>();
	
	
	public Details()
	{
		detail.add("100,Dinesh,9697394939,Male,21-07-2001");
		detail.add("101,supraja,912345678,Female,17-05-2001");
		detail.add("102,srikar,9999888822,Male,21-07-2001");
		detail.add("103,Anusha,565656565657,Female,21-07-2001");
	}
	
	
	public String getdetails(int k)
	{
		return detail.get(k);
	}
}
//child class
public class Register extends Details 
{
}
