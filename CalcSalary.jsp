<html>
<body>
<%
	String empid = request.getParameter("eid");
	String empname= request.getParameter("ename");
	String edesignation = request.getParameter("edesig");
	String ebasicsal= request.getParameter("ebasic");
	
	double empbasic = Double.parseDouble(ebasicsal);
	double TA = empbasic*0.1;
	double HRA = empbasic*0.15;
	double MA = 1000;
	double PF = 4000;
	
	double gross_sal = empbasic+TA+HRA+MA;
	double net_sal = gross_sal-PF;
	
	out.print("Employee ID "+empid);
	out.print("Employee name : "+empname);
	out.print("Employee Designation : "+edesignation);
	out.print("Employee Basic Salary : "+ebasicsal);
	out.print("Gross Salary : "+gross_sal);
	out.print("Net Salary : "+net_sal);
	
%>
</body>
</html>