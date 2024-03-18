BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			IIF([selectParam].[Freight] > 50, IIF([selectParam].[Freight] > 100, N'expensive', N'average'), N'cheap') as [Key_1]
		FROM
			[Orders] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

