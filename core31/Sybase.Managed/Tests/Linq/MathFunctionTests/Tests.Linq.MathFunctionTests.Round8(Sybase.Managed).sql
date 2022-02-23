BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN Convert(Float, [p].[MoneyValue]) - Floor(Convert(Float, [p].[MoneyValue])) = 0.5 AND Floor(Convert(Float, [p].[MoneyValue])) % 2 = 0
					THEN Floor(Convert(Float, [p].[MoneyValue]))
				ELSE Round(Convert(Float, [p].[MoneyValue]), 0)
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

