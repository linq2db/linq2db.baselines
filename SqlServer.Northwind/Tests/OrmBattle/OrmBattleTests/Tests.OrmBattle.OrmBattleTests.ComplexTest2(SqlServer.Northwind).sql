-- SqlServer.Northwind SqlServer.2019

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
			[t1].[Country]
		FROM
			[Customers] [t1]
		GROUP BY
			[t1].[Country]
	) [k_1]
		INNER JOIN [Customers] [c_1] ON ([k_1].[Country] = [c_1].[Country] OR [k_1].[Country] IS NULL AND [c_1].[Country] IS NULL) AND Substring([c_1].[CompanyName], 1, 1) = Substring([k_1].[Country], 1, 1)

