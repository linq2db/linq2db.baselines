BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[cp].[CustomerID],
	[cp].[CompanyName],
	[cp].[ContactName],
	[cp].[ContactTitle],
	[cp].[Address],
	[cp].[City],
	[cp].[Region],
	[cp].[PostalCode],
	[cp].[Country],
	[cp].[Phone],
	[cp].[Fax]
FROM
	[Customers] [cp]
		INNER JOIN [Orders] [c_1] ON ([cp].[CustomerID] = [c_1].[CustomerID] OR [cp].[CustomerID] IS NULL AND [c_1].[CustomerID] IS NULL)

