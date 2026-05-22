-- SqlCe

SELECT
	CASE
		WHEN [t3].[x] < 0 THEN 9
		ELSE [t3].[x] + 8
	END as [Y1],
	CASE
		WHEN ([t3].[x] + [t3].[x]) - FLOOR([t3].[x] + [t3].[x]) = 0.5 AND (CAST(FLOOR([t3].[x] + [t3].[x]) AS Int) % 2) = 0
			THEN FLOOR([t3].[x] + [t3].[x])
		ELSE ROUND([t3].[x] + [t3].[x], 0)
	END as [Y2]
FROM
	(
		SELECT
			Coalesce([t2].[x], 0) as [x]
		FROM
			[LinqDataTypes] [q]
				LEFT JOIN (
					SELECT
						SUM([t1].[MoneyValue]) as [x]
					FROM
						[LinqDataTypes] [t1]
				) [t2] ON 1=1
	) [t3]

