BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	IIF([t2].[SUM_1] < 0, 9, [t2].[SUM_1] + 8),
	[t2].[SUM_1] + [t2].[SUM_1]
FROM
	[LinqDataTypes] [q]
		LEFT JOIN (
			SELECT
				SUM([t1].[MoneyValue]) as [SUM_1]
			FROM
				[LinqDataTypes] [t1]
		) [t2] ON 1=1

