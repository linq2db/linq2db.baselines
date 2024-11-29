BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN [p].[MoneyValue] >= 0 THEN Floor([p].[MoneyValue])
				ELSE Ceiling([p].[MoneyValue])
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.1

