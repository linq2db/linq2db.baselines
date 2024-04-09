BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[a_Customer_1].[CustomerID],
	[a_Customer_1].[CompanyName],
	[a_Customer_1].[ContactName],
	[a_Customer_1].[ContactTitle],
	[a_Customer_1].[Address],
	[a_Customer_1].[City],
	[a_Customer_1].[Region],
	[a_Customer_1].[PostalCode],
	[a_Customer_1].[Country],
	[a_Customer_1].[Phone],
	[a_Customer_1].[Fax]
FROM
	(
		SELECT
			[a_Customer].[CustomerID]
		FROM
			[Orders] [t1]
				INNER JOIN [Customers] [a_Customer] ON ([t1].[CustomerID] = [a_Customer].[CustomerID] OR [t1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
		GROUP BY
			[a_Customer].[CustomerID]
		HAVING
			Count(*) > 20
	) [cp]
		INNER JOIN [Orders] [c_1] ON ([cp].[CustomerID] = [a_Customer_1].[CustomerID] OR [cp].[CustomerID] IS NULL AND [a_Customer_1].[CustomerID] IS NULL)
			INNER JOIN [Customers] [a_Customer_1] ON ([c_1].[CustomerID] = [a_Customer_1].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [a_Customer_1].[CustomerID] IS NULL)

