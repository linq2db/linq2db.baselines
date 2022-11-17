﻿BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[c_1].[Fax],
	[c_1].[Phone],
	[c_1].[Country],
	[c_1].[PostalCode],
	[c_1].[Region],
	[c_1].[City],
	[c_1].[Address],
	[c_1].[ContactTitle],
	[c_1].[ContactName],
	[c_1].[CompanyName],
	[c_1].[CustomerID]
FROM
	[Customers] [c_1]
WHERE
	[c_1].[Address] IS NOT NULL

