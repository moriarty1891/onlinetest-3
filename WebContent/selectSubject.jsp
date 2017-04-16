<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Online Examination System::</title>
<script type="text/javascript">
	var subjectsByBranch = new Object();
	var multi = new Object();
	var subjectsBySemComputer = new Object();
	var subjectsBySemMec = new Object();
	var subjectsBySemElectrical = new Object();
	var subjectsBySemElectronics = new Object()
	var subjectsBySemChemical = new Object()
	
	
	function showSub() {
		document.getElementById('sub').style.display = "block";
	}

	function showSem() {
		document.getElementById('sem').style.display = "block";
	}

	function OnBranchSelect() {
		showSem();
	}
	
	function showBtn() {
		subjectsByBranch[branch] = [ "Applied Mechanics", "Applied mathematics 1", "Eletrical Engineering",  "Applied physics", "Applied mathematics2", "C",  "Basic Eletronics", "C++", "Microprocessor", "CTSM", "Data Structure Through C", "Digital Eletronics","Computer networks", "database", "peripheral Interfce", "edm", "JAVA", "Operating System"];
		document.getElementById('submitBtn').style.display = "block";
		subjectsByBranch[branch] = [ "Applied Mechanics", "Applied mathematics 1", "Eletrical Engineering",  "Applied physics", "Applied mathematics2", "C"];
		document.getElementById('submitBtn').style.display = "block";
		subjectsByBranch[branch] = [ "Applied Mechanics", "Applied mathematics 1", "Eletrical Engineering",  "Applied physics", "Applied mathematics2", "C" ];
		document.getElementById('submitBtn').style.display = "block";
		subjectsByBranch[branch] = [ "Applied Mechanics", "Applied mathematics 1", "Eletrical Engineering",  "Applied physics", "Applied mathematics2", "C","Basic Eletronics","Microprocessor"];
		document.getElementById('submitBtn').style.display = "block";
		subjectsByBranch[branch] = [ "Applied Mechanics", "Applied mathematics 1", "Eletrical Engineering",  "Applied physics", "Applied mathematics2", "C"];
		document.getElementById('submitBtn').style.display = "block";
	}

	function OnSemSelect() {
		var semester = document.getElementById('semester').value;
		var select = document.getElementById('subject');
		var opt = document.createElement('option');
		var myDiv = document.getElementById("subjects");
		
		var branch = document.getElementById('branch').value;
		
	
		
		subjectsBySemComputer['1'] = [ "Applied Mechanics", "Applied mathematics 1", "Eletrical Engineering" ];
		subjectsBySemComputer['2'] = [ "Applied physics", "Applied mathematics2", "C"];
		subjectsBySemComputer['3'] = [ "Basic Eletronics", "C++", "Microprocessor"];
		subjectsBySemComputer['4'] = [ "CTSM", "Data Structure Through C", "Digital Eletronics"];
		subjectsBySemComputer['5'] = [ "Computer networks", "database", "peripheral Interfce"];
		subjectsBySemComputer['6'] =  [ "edm", "JAVA", "Operating System"];
		
		subjectsBySemMec['1'] = [ "Applied Mechanics", "Applied mathematics 1", "Eletrical Engineering" ];
		subjectsBySemMec['2'] = [ "aplied physics", "Applied mathematics2", "C++"];
		
		subjectsBySemElectrical['1'] = [ "Applied Mechanics", "Applied mathematics 1", "Eletrical Engineering" ];
		subjectsBySemElectrical['2'] = [ "Applied physics", "Applied mathematics2", "C++"];

		subjectsBySemElectronics['1'] = [ "Applied Mechanics", "Applied mathematics 1", "Eletrical Engineering" ];
		subjectsBySemElectronics['2'] = [ "Applied physics", "Applied Mathematics2", "C++"];
		subjectsBySemElectronics['2'] = [ "Basic Eletronics", "Microprocessor"];
		
		subjectsBySemChemical['1'] = [ "Applied Mechanics", "Applied mathematics 1", "Eletrical Engineering" ];
		subjectsBySemChemical['2'] = [ "Applied physics", "Applied Mathematics2", "C++"];
		
		
		multi["Computer"] = subjectsBySemComputer;
		multi["Mechanical"] = subjectsBySemMec;
		multi["Electrical"] = subjectsBySemElectrical;
		multi["Electronics"] = subjectsBySemElectronics;
		multi["Chemical"] = subjectsBySemChemical;
		
		
		

		var selectList = document.createElement("select");
		selectList.id = "mySelect";
		selectList.name = "selectedSubject";
		myDiv.appendChild(selectList);
		var subBySem = multi[branch];
		var exactSubj = subBySem[semester];
		var value = document.getElementById("mySelect").value;
		if (value != '' && value != null) {
			document.getElementById("mySelect").remove();
		}
		for (var i = 0; i < exactSubj.length; i++) {
			var option = document.createElement("option");
			option.value = exactSubj[i];
			option.text = exactSubj[i];
			selectList.appendChild(option);
		}
		showSub();
		showBtn();
	}
</script>
</head>
<body bgcolor="grey">

	<form action="${pageContext.request.contextPath}/getQuestions" method="post">
		<table border="1">
			<tr style="display: block;">
				<td>Branch</td><td style="width: 100px"></td>
				<td><select name="branch" id="branch" onchange="OnBranchSelect();">
						<option value="-1">---Select Branch---</option>
						<option value="Computer">Computer Engg.</option>
						<option value="Mechanical">Mechanical engg.</option>
						<option value="Electrical">Electrical Engg.</option>
						<option value="Electronics">Electronics Engg.</option>
						<option value="Chemical">Chemical Engg.</option>
				</select></td>
			</tr>
			<tr id="sem" style="display: none">
				<td>Select Semester</td><td style="width:45px"></td>
				<td><select name="semester" id="semester"
					onchange="OnSemSelect();"><option value="-1">---Select Semester---</option><option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option></select></td>
			</tr>
			<tr id="sub" style="display: none">
				<td>Subject</td><td style="width:100px"></td>
				<td>
					<!-- <select name="subject" id="subject">
				</select> -->
					<div id="subjects"></div>
				</td>
			</tr>
			<tr  id="submitBtn" style="display: none"><td><input type="submit" value="Get Question Paper"></td></tr>
		</table>
	</form>

</body>
</html>