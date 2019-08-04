package collegefinder.model;

public class CollegeModel {
private int id;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getHseb() {
	return hseb;
}
public void setHseb(String hseb) {
	this.hseb = hseb;
}
public String getAdmissionFee() {
	return admissionFee;
}
public void setAdmissionFee(String admissionFee) {
	this.admissionFee = admissionFee;
}
public String getSemesterFee() {
	return semesterFee;
}
public void setSemesterFee(String semesterFee) {
	this.semesterFee = semesterFee;
}
private String hseb;
private String admissionFee;
private String semesterFee;

}
