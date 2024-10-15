BeforeExecute
-- SQLite.MS SQLite

SELECT
	CAST([p].[c1] AS INTEGER)
FROM
	(
		SELECT
			CAST([t].[MoneyValue] AS Real) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

