BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			CASE
				WHEN CAST(-[p].[MoneyValue] AS Float) >= 0 THEN Floor(CAST(-[p].[MoneyValue] AS Float))
				ELSE Ceiling(CAST(-[p].[MoneyValue] AS Float))
			END as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

