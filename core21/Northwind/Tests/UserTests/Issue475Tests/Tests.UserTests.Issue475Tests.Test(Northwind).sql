BeforeExecute
-- Northwind SqlServer.2017

SELECT 
	[e].[PhotoPath], 
	[e].[ReportsTo], 
	[e].[Notes], 
	[e].[Photo], 
	[e].[Extension], 
	[e].[HomePhone], 
	[e].[Country], 
	[e].[PostalCode], 
	[e].[Region], 
	[e].[City], 
	[e].[Address], 
	[e].[HireDate], 
	[e].[BirthDate], 
	[e].[TitleOfCourtesy], 
	[e].[Title], 
	[e].[FirstName], 
	[e].[LastName], 
	[e].[EmployeeID]
FROM
	[Employees] [e]

BeforeExecute
-- Northwind SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[e].[PhotoPath], 
	[e].[ReportsTo], 
	[e].[Notes], 
	[e].[Photo], 
	[e].[Extension], 
	[e].[HomePhone], 
	[e].[Country], 
	[e].[PostalCode], 
	[e].[Region], 
	[e].[City], 
	[e].[Address], 
	[e].[HireDate], 
	[e].[BirthDate], 
	[e].[TitleOfCourtesy], 
	[e].[Title], 
	[e].[FirstName], 
	[e].[LastName], 
	[e].[EmployeeID]
FROM
	[Employees] [e]

