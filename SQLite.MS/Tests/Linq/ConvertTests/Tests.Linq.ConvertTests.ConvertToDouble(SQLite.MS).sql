BeforeExecute
-- SQLite.MS SQLite

SELECT
	CAST([p_1].[c1] AS INTEGER)
FROM
	(
		SELECT
			CAST([p].[MoneyValue] AS Float) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

