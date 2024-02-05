BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			IIF((
				SELECT
					Avg([o].[Freight])
				FROM
					[Orders] [o]
				WHERE
					([selectParam].[CustomerID] = [o].[CustomerID] OR [selectParam].[CustomerID] IS NULL AND [o].[CustomerID] IS NULL)
			) >= 80, 1, 0) as [Key_1]
		FROM
			[Customers] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

