alter table Departments
Add DepartmentCode varchar(5);

INSERT INTO Departments (DepartmentID, DepartmentName, DeptHeadID, DepartmentCode)
VALUES 
   (1, 'Human Resources', 101, 'HR01'),
   (2, 'Finance', 102, 'FIN02');

alter table employees
add DepartmentID int,
add constraint fore
foreign key(DepartmentID) references departments(DepartmentID)
on delete set null
on update cascade;




