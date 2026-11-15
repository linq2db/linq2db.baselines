-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [t3].[x] < 0 THEN 9
		ELSE [t3].[x] + 8
	END,
	[t3].[x] + [t3].[x]
FROM
	(
		SELECT
			CASE
				WHEN [t2].[x] IS NULL THEN 0
				ELSE [t2].[x]
			END as [x]
		FROM
			[LinqDataTypes] [q]
				LEFT JOIN (
					SELECT
						SUM([t1].[MoneyValue]) as [x]
					FROM
						[LinqDataTypes] [t1]
				) [t2] ON 1=1
	) [t3]

