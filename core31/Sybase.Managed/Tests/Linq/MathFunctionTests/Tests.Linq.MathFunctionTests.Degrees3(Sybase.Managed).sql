BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Float, Convert(Int, [p].[MoneyValue])) * 57.295779513082323 as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	(Convert(Float, [t].[c1]) <> 0.10000000000000001 OR Convert(Float, [t].[c1]) IS NULL)

