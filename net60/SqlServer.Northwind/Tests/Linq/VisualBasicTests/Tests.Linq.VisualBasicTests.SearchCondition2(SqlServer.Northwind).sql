BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[cust].[CustomerID]
FROM
	[Customers] [cust]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[Orders] [t1]
		WHERE
			([cust].[CustomerID] = [t1].[CustomerID] OR [cust].[CustomerID] IS NULL AND [t1].[CustomerID] IS NULL)
	) > 0 AND
	[cust].[CompanyName] LIKE N'H%' ESCAPE N'~'

