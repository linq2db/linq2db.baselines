BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CAST([p].[c1] AS INTEGER)
FROM
	(
		SELECT
			CAST([t].[MoneyValue] AS Float) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

