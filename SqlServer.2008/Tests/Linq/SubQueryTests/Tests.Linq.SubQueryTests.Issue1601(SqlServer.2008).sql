BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN [t2].[SUM_1] < 0 THEN 1
		ELSE 0
	END,
	[t2].[SUM_1] + 8,
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

