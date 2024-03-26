Create Table Employees (
	EmployeeID int,
    EmployeeName varchar(50),
    Primary key (EmployeeID)
);
Create Table Departments (
	DepartmentID int,
    DepartmentName varchar(50),
    DeptHeadID int,
    Primary key (DepartmentID)
);