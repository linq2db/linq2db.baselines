BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN Convert(Float, -[p].[MoneyValue]) >= 0
					THEN Floor(Convert(Float, -[p].[MoneyValue]))
				ELSE Ceiling(Convert(Float, -[p].[MoneyValue]))
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] IS NULL OR [t].[c1] <> 0.10000000000000001)

