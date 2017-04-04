package com.onlinetest.models;

public class Test {

	private String subject;
	private int semester;
	private String branch;

	public String getSubject() {
		return subject;
	}

	public int getSemester() {
		return semester;
	}

	public String getBranch() {
		return branch;
	}

	public Test(int semester, String subject, String branch) {
		this.semester = semester;
		this.subject = subject;
		this.branch = branch;
	}

}
