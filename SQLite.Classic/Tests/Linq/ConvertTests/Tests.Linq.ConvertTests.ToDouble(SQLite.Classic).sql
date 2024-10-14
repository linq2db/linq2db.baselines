BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[c1]
FROM
	(
		SELECT
			CAST(CAST([t].[MoneyValue] AS Float) AS INTEGER) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

