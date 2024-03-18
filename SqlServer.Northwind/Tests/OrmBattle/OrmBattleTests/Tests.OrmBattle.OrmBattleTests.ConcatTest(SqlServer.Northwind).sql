BeforeExecute
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
	[Customers] [c_1]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[Orders] [t1]
		WHERE
			([c_1].[CustomerID] = [t1].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [t1].[CustomerID] IS NULL)
	) <= 1
UNION ALL
SELECT
	[c_2].[CustomerID],
	[c_2].[CompanyName],
	[c_2].[ContactName],
	[c_2].[ContactTitle],
	[c_2].[Address],
	[c_2].[City],
	[c_2].[Region],
	[c_2].[PostalCode],
	[c_2].[Country],
	[c_2].[Phone],
	[c_2].[Fax]
FROM
	[Customers] [c_2]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[Orders] [t2]
		WHERE
			([c_2].[CustomerID] = [t2].[CustomerID] OR [c_2].[CustomerID] IS NULL AND [t2].[CustomerID] IS NULL)
	) > 1

