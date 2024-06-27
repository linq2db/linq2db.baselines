BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	IIF([t2].[SUM_1] < 0, 9, [t2].[SUM_1] + 8),
	[t2].[SUM_1] + [t2].[SUM_1]
FROM
	(
		SELECT
			(
				SELECT
					SUM([t1].[MoneyValue])
				FROM
					[LinqDataTypes] [t1]
			) as [SUM_1]
		FROM
			[LinqDataTypes] [q]
	) [t2]

