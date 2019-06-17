package net.kzn.shoppingbackend.daoimpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.kzn.shoppingbackend.dao.AvailabilitySearchDAO;
import net.kzn.shoppingbackend.dto.AvailabilitySearch;

@Repository("availabilitySearchDAO")
public class AvailabilitySearchDAOImpl implements AvailabilitySearchDAO {

	private static List<AvailabilitySearch> availabilities = new ArrayList<>();
	static {
    	
		
		try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException("Cannot find the driver in the classpath!", e);
        }
        
        
        String url = "jdbc:mysql://localhost:3306/DT?useUnicode=true&characterEncoding=utf8&useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
        String username = "root";
        String password = "dracder56";
        try (Connection con = DriverManager.getConnection(url, username, password)) {
            
            Statement s = con.createStatement();
            // check employee's availability in specific department under a range of time (can be more than a week) with limit on hour_remaining
            ResultSet rs;
            String q;
            q = "with temporaryTable (first_name, last_name, e_id, hour_remaining) as (SELECT first_name, last_name, e_id, sum(hour_remaining) from  (select* from DT.schedule1 join DT.employee using (e_id, e_id) where department = 'UI')as hello where week_beg between '2019-05-25' and '2019-06-12' group by e_id) select* from temporaryTable where hour_remaining> 5";
            rs = s.executeQuery(q);
            if (rs.next()) {
            	do {
            	AvailabilitySearch search = new AvailabilitySearch();
            	search.setId(rs.getString(3));
            	search.setFirstName(rs.getString(1));
            	search.setLastName(rs.getString(2));
            	search.setHours(rs.getString(4));
            	availabilities.add(search);
            	}while(rs.next());
            }
        }
        catch (SQLException e) {
        	
        }
        
	}
	
	
	
	@Override
	public List<AvailabilitySearch> list() {
		// TODO Auto-generated method stub
		return availabilities;
	}

}
