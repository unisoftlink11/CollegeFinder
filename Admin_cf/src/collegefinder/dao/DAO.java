package collegefinder.dao;

import collegefinder.model.*;
import sun.text.normalizer.UBiDiProps;
import collegefinder.dbcon.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO {

	private Connection conn = null;
	ResultSet rs = null;
	boolean status = false;

	public DAO() {
		conn = DB.getConnection();
	}

	public boolean insertCInfo(User user) {

		try {
			String sql1 = "insert into bsccsit_ktm(id,CollegeName,CollegeAddress,University,Link)"
					+ "values(?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setInt(1, user.getId());
			ps.setString(2, user.getCollegeName());
			ps.setString(3, user.getCollegeAddress());
			ps.setString(4, user.getUniversity());
			ps.setString(5, user.getLink());
			ps.executeUpdate();
			status = true;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return status;
	}

	public void deleteCInfo(int userID) {
		try {
			String sql1 = "delete from bsccsit_ktm where id=?";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setInt(1, userID);
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void updateCInfo(User user) {
		try {
			String sql1 = "update bsccsit_ktm set CollegeName=?,CollegeAddress=?,University=?,Link=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql1);

			ps.setString(1, user.getCollegeName());
			ps.setString(2, user.getCollegeAddress());
			ps.setString(3, user.getUniversity());
			ps.setString(4, user.getLink());
			ps.setInt(5, user.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public List<User> getAllUser() {
		List<User> user = new ArrayList<User>();
		try {
			String sql1 = "select * from bsccsit_ktm";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User ub = new User();
				ub.setId(rs.getInt("id"));
				ub.setCollegeName(rs.getString("CollegeName"));
				ub.setCollegeAddress(rs.getString("CollegeAddress"));
				ub.setUniversity(rs.getString("University"));
				ub.setLink(rs.getString("Link"));
				user.add(ub);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}

	public User getUserById(int uid) {
		User ub = new User();
		try {
			String sql1 = "select * from bsccsit_ktm where id =?";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setInt(1, uid);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				ub.setId(rs.getInt("id"));
				ub.setCollegeName(rs.getString("CollegeName"));
				ub.setCollegeAddress(rs.getString("CollegeAddress"));
				ub.setUniversity(rs.getString("University"));
				ub.setLink(rs.getString("Link"));
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return ub;
	}

	public boolean insertbca(User user) {
		boolean status = false;
		try {
			String sql1 = "insert into bca_ltp(id,CollegeName,CollegeAddress,University,Link)" + "values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setInt(1, user.getId());
			ps.setString(2, user.getCollegeName());
			ps.setString(3, user.getCollegeAddress());
			ps.setString(4, user.getUniversity());
			ps.setString(5, user.getLink());
			ps.executeUpdate();
			status = true;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return status;
	}

	public void deletebca(int userID) {
		try {
			String sql1 = "delete from bca_ltp where id=?";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setInt(1, userID);
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void updatebca(User user) {
		try {
			String sql1 = "update bca_ltp set CollegeName=?,CollegeAddress=?,University=?,Link=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql1);

			ps.setString(1, user.getCollegeName());
			ps.setString(2, user.getCollegeAddress());
			ps.setString(3, user.getUniversity());
			ps.setString(4, user.getLink());
			ps.setInt(5, user.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public List<User> getAllUser1() {
		List<User> user = new ArrayList<User>();
		try {
			String sql1 = "select * from bca_ltp";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User ub = new User();
				ub.setId(rs.getInt("id"));
				ub.setCollegeName(rs.getString("CollegeName"));
				ub.setCollegeAddress(rs.getString("CollegeAddress"));
				ub.setUniversity(rs.getString("University"));
				ub.setLink(rs.getString("Link"));
				user.add(ub);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}

	public User getUserById1(int uid) {
		User ub = new User();
		try {
			String sql1 = "select * from bca_ltp where id =?";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setInt(1, uid);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				ub.setId(rs.getInt("id"));
				ub.setCollegeName(rs.getString("CollegeName"));
				ub.setCollegeAddress(rs.getString("CollegeAddress"));
				ub.setUniversity(rs.getString("University"));
				ub.setLink(rs.getString("Link"));
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return ub;
	}

	public boolean insertbim(User user) {
		boolean status = false;
		try {
			String sql1 = "insert into bim_ktm(id,CollegeName,CollegeAddress,University,Link)" + "values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setInt(1, user.getId());
			ps.setString(2, user.getCollegeName());
			ps.setString(3, user.getCollegeAddress());
			ps.setString(4, user.getUniversity());
			ps.setString(5, user.getLink());
			ps.executeUpdate();
			status = true;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return status;
	}

	public void deletebim(int userID) {
		try {
			String sql1 = "delete from bim_ktm where id=?";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setInt(1, userID);
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void updatebim(User user) {
		try {
			String sql1 = "update bim_ktm set CollegeName=?,CollegeAddress=?,University=?,Link=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql1);

			ps.setString(1, user.getCollegeName());
			ps.setString(2, user.getCollegeAddress());
			ps.setString(3, user.getUniversity());
			ps.setString(4, user.getLink());
			ps.setInt(5, user.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public List<User> getAllUser2() {
		List<User> user = new ArrayList<User>();
		try {
			String sql1 = "select * from bim_ktm";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User ub = new User();
				ub.setId(rs.getInt("id"));
				ub.setCollegeName(rs.getString("CollegeName"));
				ub.setCollegeAddress(rs.getString("CollegeAddress"));
				ub.setUniversity(rs.getString("University"));
				ub.setLink(rs.getString("Link"));
				user.add(ub);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}

	public User getUserById2(int uid) {
		User ub = new User();
		try {
			String sql1 = "select * from bim_ktm where id =?";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setInt(1, uid);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				ub.setId(rs.getInt("id"));
				ub.setCollegeName(rs.getString("CollegeName"));
				ub.setCollegeAddress(rs.getString("CollegeAddress"));
				ub.setUniversity(rs.getString("University"));
				ub.setLink(rs.getString("Link"));
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return ub;
	}

	public boolean validUser(User user) {
		boolean status = false;
		try {
			String sql = "select * from login where username=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				String userEmail = rs.getString("username");
				String userPassword = rs.getString("password");

				if (user.getUsername().equals(userEmail) && user.getPassword().equals(userPassword)) {
					status = true;
				}
			}
			// return status;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return status;
	}

	public List<User> search(String course, String uv) {

		List<User> user = new ArrayList<User>();
		String table = null;
		switch (course) {
		case "BSC.CSIT":
			table = "bsccsit_ktm";
			break;
		case "BCA":
			table = "bca_ltp";
			break;
		case "BIM":
			table = "bim_ktm";
		}
		try {
			String sql = "select CollegeName,CollegeAddress,Link from " + table + " where University='TU' ";
			System.out.println(sql);
			PreparedStatement pst = conn.prepareStatement(sql);
			// pst.setString(1, uv);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				User ub = new User();
				// ub.setId(rs.getInt("id"));
				ub.setCollegeName(rs.getString("CollegeName"));
				ub.setCollegeAddress(rs.getString("CollegeAddress"));
				// ub.setUniversity(rs.getString("University"));
				ub.setLink(rs.getString("Link"));
				user.add(ub);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return user;

	}

	public boolean contact(User user) {

		try {
			String sql1 = "insert into contact(Name,Email,Message)" + "values(?,?,?)";

			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getMessage());
			ps.executeUpdate();
			status = true;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return status;
	}

//search text field
	public ArrayList<User> search(String key) {
		ArrayList<User> userList = new ArrayList<User>();
		try {

			String sql = "select * from bsccsit_ktm where CollegeName=? or CollegeAddress=? or  University=? or Link=? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, key);
			ps.setString(2, key);
			ps.setString(3, key);
			ps.setString(4, key);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setCollegeName(rs.getString("CollegeName"));
				user.setCollegeAddress(rs.getString("CollegeAddress"));
				user.setUniversity(rs.getString("University"));
				user.setLink(rs.getString("Link"));
				userList.add(user);
				System.out.println(userList);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}

	// scholarship_before_admission
	public List<CollegeModel> Scholar(int val) {
		List<CollegeModel> cu = new ArrayList<CollegeModel>();

		String sql = null;
		switch (val) {
		case 1:
			sql = "select id,HSEB,AdmissionFee,SemesterFee from scholarbeforeadmission";
			break;
		case 2:
			sql = "select id,HSEB,AdmissionFee,SemesterFee from sba_bca";
			break;
		case 3:
			sql = "select id,HSEB,AdmissionFee,SemesterFee from sba_bim";
		}
		try {
			// String sql="select id,HSEB,AdmissionFee,SemesterFee from" +table;
			// String sql1 ="select id,HSEB,AdmissionFee,SemesterFee from sba_bca";
			// String sql2 ="select id,HSEB,AdmissionFee,SemesterFee from sba_bim";
			System.out.println(sql);
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				CollegeModel cm = new CollegeModel();
				cm.setId(rs.getInt("id"));
				cm.setHseb(rs.getString("HSEB"));
				cm.setAdmissionFee(rs.getString("AdmissionFee"));
				cm.setSemesterFee(rs.getString("SemesterFee"));
				cu.add(cm);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return cu;

	}

	// scholarship_after_admission
	public List<scholarshipafteradmission> ScholarAfter(int val) {
		List<scholarshipafteradmission> sa = new ArrayList<scholarshipafteradmission>();
		String sql = null;
		switch (val) {
		case 1:
			sql = "select id,First,Second,Third from scholarafteradmission";
			break;
		case 2:
			sql = "select id,First,Second,Third from saa_bca";
			break;
		case 3:
			sql = "select id,First,Second,Third from saa_bim";
		}
		try {
			System.out.println(sql);
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				scholarshipafteradmission saa = new scholarshipafteradmission();
				saa.setId(rs.getInt("id"));
				saa.setFirst(rs.getString("First"));
				saa.setSecond(rs.getString("Second"));
				saa.setThird(rs.getString("Third"));
				;
				sa.add(saa);
			}

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return sa;
	}


//knapsack algorithm

	static int max(int a, int b) {
		return (a > b) ? a : b;
	}

	public static int knapSack(int W, int wt[], int val[], int n) {

		int i, w;
		int K[][] = new int[n + 1][W + 1];

		// Build table K[][] in bottom up manner
		for (i = 0; i <= n; i++) {
			for (w = 0; w <= W; w++) {
				if (i == 0 || w == 0)
					K[i][w] = 0;
				else if (wt[i - 1] <= w)
					K[i][w] = max(val[i - 1] + K[i - 1][w - wt[i - 1]], K[i - 1][w]);
				else
					K[i][w] = K[i - 1][w];
			}
		}

		return K[n][W];
	}

	public String resultKnapSack(String val) {
		String result = null;
		try {
			String sql = "select CollegeName from knapsack where val=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			int xyz = Integer.parseInt(val);
			ps.setInt(1, xyz);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				result = rs.getString(1);
				// System.out.println(rs.getString(1));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	public List<KnapsackModel> getKnapInfo() {
		List<KnapsackModel> user = new ArrayList<KnapsackModel>();
		try {
			String sql1 = "select * from knapsack";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				KnapsackModel ub = new KnapsackModel();
				ub.setId(rs.getInt("id"));
				ub.setCollegeName(rs.getString("CollegeName"));
				ub.setVal(rs.getInt("val"));
				ub.setWt(rs.getInt("wt"));
				user.add(ub);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}
	
	public boolean insertKnapInfo(KnapsackModel model) {

		try {
			String sql1 = "insert into knapsack(id,CollegeName,wt,val)"
					+ "values(?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setInt(1, model.getId());
			ps.setString(2, model.getCollegeName());
			ps.setInt(3, model.getWt());
			ps.setInt(4, model.getVal());
			ps.executeUpdate();
			status = true;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return status;
	}

	public void updateKnapInfo(KnapsackModel model) {
		try {
			String sql1 = "update knapsack set CollegeName=?,wt=?,val=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql1);

			ps.setString(1, model.getCollegeName());
			ps.setInt(2, model.getWt());
			ps.setInt(3, model.getVal());
			ps.setInt(4, model.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public void deleteKnapInfo(int id) {
		try {
			String sql = "delete from knapsack where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public KnapsackModel getKnapModelById(int uid) {
		KnapsackModel ub = new KnapsackModel();
		try {
			String sql1 = "select * from knapsack where id =?";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setInt(1, uid);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				ub.setId(rs.getInt("id"));
				ub.setCollegeName(rs.getString("CollegeName"));
				ub.setWt(rs.getInt("wt"));
				ub.setVal(rs.getInt("val"));
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return ub;
	}
	
	
	
	
	//count number 

	public int countbsccsit() {
		int countnum = 0;
		try {
			String sql = "select count(*) from bsccsit_ktm";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				countnum = rs.getInt("count(*)");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return countnum;

	}

	public int countbca() {
		int countnum = 0;
		try {
			String sql = "select count(*) from bca_ltp";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				countnum = rs.getInt("count(*)");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return countnum;

	}

	public int countbim() {
		int countnum = 0;
		try {
			String sql = "select count(*) from bim_ktm";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				countnum = rs.getInt("count(*)");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return countnum;

	}

//chart

	/*
	 * public void PieChart() {
	 * 
	 * String faculty[] = { "Bsc.CSIT", "BCA", "BIM", }; double[] value = {
	 * countbsccsit(),countbca(),countbim(), };
	 * 
	 * DefaultPieDataset dataset = new DefaultPieDataset();
	 * dataset.setvalue(faculty,value);
	 * 
	 * JFreeChart chart = ChartFactory.createPieChart( "College Faculty", // chart
	 * title value,// data true, // include legend true, false );
	 * 
	 * int width = 560; Width of the image int height = 370; Height of the image
	 * File pieChart = new File( "Pie_Chart.jpeg" ); ChartUtilities.saveChartAsJPEG(
	 * pieChart , chart , width , height ); }
	 */

}
