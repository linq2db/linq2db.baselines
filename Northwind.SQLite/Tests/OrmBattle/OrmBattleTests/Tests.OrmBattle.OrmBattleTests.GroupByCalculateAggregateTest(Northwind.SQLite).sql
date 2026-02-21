-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	SUM([g_1].[Freight])
FROM
	[Orders] [g_1]
		INNER JOIN [Customers] [a_Customer] ON [g_1].[CustomerID] = [a_Customer].[CustomerID]
GROUP BY
	[a_Customer].[CustomerID],
	[a_Customer].[CompanyName],
	[a_Customer].[ContactName],
	[a_Customer].[ContactTitle],
	[a_Customer].[Address],
	[a_Customer].[City],
	[a_Customer].[Region],
	[a_Customer].[PostalCode],
	[a_Customer].[Country],
	[a_Customer].[Phone],
	[a_Customer].[Fax]

