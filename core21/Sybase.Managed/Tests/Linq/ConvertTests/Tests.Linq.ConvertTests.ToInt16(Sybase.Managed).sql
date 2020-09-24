BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(SmallInt, [t].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

