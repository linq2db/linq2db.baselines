BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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
	(
		SELECT
			[t1].[City]
		FROM
			[Customers] [t1]
		GROUP BY
			[t1].[City]
	) [cp]
		INNER JOIN [Customers] [c_1] ON ([cp].[City] = [c_1].[City] OR [cp].[City] IS NULL AND [c_1].[City] IS NULL)

