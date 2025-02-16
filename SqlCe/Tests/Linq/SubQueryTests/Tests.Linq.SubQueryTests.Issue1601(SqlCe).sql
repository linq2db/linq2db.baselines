BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [t2].[x] < 0 THEN 9
		ELSE [t2].[x] + 8
	END as [c1],
	[t2].[x] + [t2].[x] as [c2]
FROM
	[LinqDataTypes] [q]
		LEFT JOIN (
			SELECT
				SUM([t1].[MoneyValue]) as [x]
			FROM
				[LinqDataTypes] [t1]
		) [t2] ON 1=1

