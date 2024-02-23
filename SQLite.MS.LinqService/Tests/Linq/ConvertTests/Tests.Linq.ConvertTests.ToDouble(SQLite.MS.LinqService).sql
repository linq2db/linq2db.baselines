BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			Cast(Cast([p].[MoneyValue] as Float) as INTEGER) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

