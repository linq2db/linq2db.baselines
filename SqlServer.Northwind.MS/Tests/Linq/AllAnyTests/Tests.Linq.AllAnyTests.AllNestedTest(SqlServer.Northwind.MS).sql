﻿BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[c_1].[CustomerID],
	[c_1].[CompanyName],
	[c_1].[ContactName],
	[c_1].[ContactTitle],
	[c_1].[Address],
	[c_1].[City],
	[c_1].[Region],
	[c_1].[PostalCode],
	[c_1].[Country],
	[c_1].[Phone],
	[c_1].[Fax]
FROM
	[Customers] [c_1]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[Orders] [o]
				INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
				LEFT JOIN [Employees] [a_Employee] ON [o].[EmployeeID] = [a_Employee].[EmployeeID]
		WHERE
			([a_Customer].[CustomerID] = [c_1].[CustomerID] OR [a_Customer].[CustomerID] IS NULL AND [c_1].[CustomerID] IS NULL) AND
			NOT (EXISTS(
				SELECT
					*
				FROM
					[Employees] [e]
				WHERE
					[a_Employee].[EmployeeID] = [e].[EmployeeID] AND [e].[FirstName] LIKE N'A%' ESCAPE N'~'
			))
	)

