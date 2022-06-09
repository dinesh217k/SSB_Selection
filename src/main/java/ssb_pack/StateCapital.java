package ssb_pack;

import java.util.*;
import java.util.ArrayList;
public class StateCapital 
{
	public ArrayList<String> stateCapital=new ArrayList<String>();
	
	public StateCapital()
	{
		stateCapital.add("Telangana,Hyderabad");
		stateCapital.add("Karnataka,Bengaluru");
		stateCapital.add("UP,Lucknow");
	}
	public String getStateCapital(int k)
	{
		return stateCapital.get(k);
	}

}
