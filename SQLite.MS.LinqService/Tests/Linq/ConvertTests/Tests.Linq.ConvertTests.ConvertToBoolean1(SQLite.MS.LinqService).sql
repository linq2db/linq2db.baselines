BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[t].[MoneyValue] <> 0 as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] = 1

