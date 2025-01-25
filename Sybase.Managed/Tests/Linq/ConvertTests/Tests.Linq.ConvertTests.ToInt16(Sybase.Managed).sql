BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			CAST([p].[MoneyValue] AS SmallInt) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

