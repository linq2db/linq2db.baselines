BeforeExecute
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
	'123' || CASE
		WHEN Length([c_1].[City]) > 8 AND [c_1].[City] IS NOT NULL
			THEN [c_1].[City]
		ELSE Replicate(' ', 8 - Length([c_1].[City])) || [c_1].[City]
	END = '123 Seattle'
LIMIT 1

