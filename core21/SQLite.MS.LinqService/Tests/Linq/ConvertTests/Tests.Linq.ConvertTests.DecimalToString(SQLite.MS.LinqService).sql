BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Cast([t].[MoneyValue] as NVarChar(31)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	Length([p].[c1]) > 0

