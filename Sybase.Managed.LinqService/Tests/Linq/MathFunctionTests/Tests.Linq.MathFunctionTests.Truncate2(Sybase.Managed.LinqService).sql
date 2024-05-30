BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			CASE
				WHEN CAST(-[t].[MoneyValue] AS Float) >= 0 THEN Floor(CAST(-[t].[MoneyValue] AS Float))
				ELSE Ceiling(CAST(-[t].[MoneyValue] AS Float))
			END as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0.10000000000000001

