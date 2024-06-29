BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [t2].[SUM_1] < 0 THEN 9
		ELSE [t2].[SUM_1] + 8
	END as [c1],
	[t2].[SUM_1] + [t2].[SUM_1] as [c2]
FROM
	[LinqDataTypes] [q]
		LEFT JOIN (
			SELECT
				SUM([t1].[MoneyValue]) as [SUM_1]
			FROM
				[LinqDataTypes] [t1]
		) [t2] ON 1=1

