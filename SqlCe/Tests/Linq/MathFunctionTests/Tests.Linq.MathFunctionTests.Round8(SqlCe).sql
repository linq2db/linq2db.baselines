BeforeExecute
-- SqlCe

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			CASE
				WHEN CAST([t].[MoneyValue] AS Float) - Floor(CAST([t].[MoneyValue] AS Float)) = 0.5 AND CAST(Floor(CAST([t].[MoneyValue] AS Float)) AS Int) % 2 = 0
					THEN Floor(CAST([t].[MoneyValue] AS Float))
				ELSE Round(CAST([t].[MoneyValue] AS Float), 0)
			END as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

