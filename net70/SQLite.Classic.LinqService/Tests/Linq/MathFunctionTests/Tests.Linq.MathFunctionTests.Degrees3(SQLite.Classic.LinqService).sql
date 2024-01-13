BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Degrees(Cast([t].[MoneyValue] as INTEGER)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	Cast([t_1].[c1] as Float) <> 0.10000000000000001

