BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	MAX([t1].[Count_1])
FROM
	[Customers] [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Orders] [o]
					INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID]
			WHERE
				[a_Customer].[CustomerID] = [t2].[CustomerID]
		) [t1]

