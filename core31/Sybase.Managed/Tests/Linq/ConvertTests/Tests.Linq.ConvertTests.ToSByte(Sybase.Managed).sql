BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(TinyInt, [t].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

