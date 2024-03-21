BeforeExecute
-- SqlCe

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			CASE
				WHEN Convert(Float, [t].[MoneyValue]) - Floor(Convert(Float, [t].[MoneyValue])) = 0.5 AND Convert(Int, Floor(Convert(Float, [t].[MoneyValue]))) % 2 = 0
					THEN Floor(Convert(Float, [t].[MoneyValue]))
				ELSE Round(Convert(Float, [t].[MoneyValue]), 0)
			END as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

