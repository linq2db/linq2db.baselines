-- SqlCe

SELECT
	CASE
		WHEN [t3].[x] < 0 THEN 9
		ELSE [t3].[x] + 8
	END as [Y1],
	[t3].[x] + [t3].[x] as [Y2]
FROM
	(
		SELECT
			Coalesce([t2].[x], 0) as [x]
		FROM
			[LinqDataTypes] [q]
				LEFT JOIN (
					SELECT
						Coalesce(SUM([t1].[MoneyValue]), 0) as [x]
					FROM
						[LinqDataTypes] [t1]
				) [t2] ON 1=1
	) [t3]

