﻿BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

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
	[c_1].[CustomerID] LIKE 'A%' ESCAPE '~' OR [c_1].[CustomerID] LIKE 'L%' ESCAPE '~'

