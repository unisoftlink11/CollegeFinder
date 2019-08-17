package collegefinder.scrapper;
import java.io.File;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
public class Scrape {
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		
		//Launch the firefox browser in maximized window
		
		System.setProperty("webdriver.gecko.driver", "D:\\geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
	//for console display 
		
		driver.manage().window().maximize();
		
		/*
		 * driver.get("http://cs.sxc.edu.np/index.php/academic/bsccsit");
		 * System.out.println(driver.findElement(By.xpath("//body//p//a")).getAttribute(
		 * "title"));
		 * 
		 * driver.get("http://cs.sxc.edu.np/index.php/contact");
		 * System.out.println(driver.findElement(By.className("contact-street")).getText
		 * ());
		 * System.out.println(driver.findElement(By.xpath("//body//p//a")).getAttribute(
		 * "href"));
		 * 
		 * 
		 * 
		 * driver.get("http://jdmmc.com.np/dashboard/menu/13/0/20");
		 * System.out.println(driver.findElement(By.className("contact-form")).getText()
		 * );
		 * 
		 * 
		 * 
		 * driver.get("https://www.hcoe.edu.np/");
		 * System.out.println(driver.findElement(By.className("m-contact-city-region")).
		 * getText());
		 * System.out.println(driver.findElement(By.className("m-contact-subject")).
		 * getText()); System.out.println(driver.findElement(By.xpath(
		 * "//body//div//div//div//div//div//a")).getAttribute("href"));
		 */
		
		  driver.get("https://swastikcollege.edu.np/contact");
		  System.out.println(driver.findElement(By.className("contact_info")).getText()
		  ); System.out.println(driver.getTitle());
		  System.out.println(driver.findElement(By.xpath("//body//div//div//a")).
		  getAttribute("href"));
		 
		
	
		/*
		 * driver.get("http://www.prime.edu.np/contact-us/");
		 * System.out.println(driver.findElement(By.className("location")).getText());
		 * System.out.println(driver.getTitle());
		 * System.out.println(driver.findElement(By.xpath(
		 * "//body//div//div//div//div//a")).getAttribute("href"));
		 */
		 
		
		Thread.sleep(3000);
		
		
		
		
    //	driver.findElement(By.xpath("//li[text()='Price -- Low to High']")).click();  // uncomment it if you want to sort the results from low to high
    	//Thread.sleep(2000);															  // uncomment it if you want to sort the results from low to high
		
		// Creating a File object that represents the disk file. Location is your Project folder : C:\Users\bewosaurabh\selenium-only\SeleniumProjects\
		PrintStream outputFile = new PrintStream(new File("scrape.txt"));

		// Store current System.out before assigning a new value
		PrintStream console = System.out;

		// Print on textfile to output stream
		System.setOut(outputFile);
		
		String title=  driver.getTitle();
		String link = driver.findElement(By.xpath("//body//div//div//a")).getAttribute("href");
		String contact= driver.findElement(By.className("contact_info")).getText();
		
		
		  try{
		  
		  Class.forName("com.mysql.jdbc.Driver"); Connection connect=
		  DriverManager.getConnection("jdbc:mysql://localhost:3306/collegefinder",
		  "root",""); PreparedStatement pst= connect.
		  prepareStatement("insert into bsccsit_ktm(id,CollegeName,Link,CollegeAddress,University) values(5,?,?,?,'TU')"
		  );
		  
		  pst.setString(1, title); pst.setString(2, link); pst.setString(3, contact);
		  pst.executeUpdate(); connect.close();
		  System.out.println("Inserted successfully"); } catch(Exception e){
		  System.out.println(e); }
		 
		
	}

	private static WebElement Elements(int counter) {
		// TODO Auto-generated method stub
		return null;
	}

}

