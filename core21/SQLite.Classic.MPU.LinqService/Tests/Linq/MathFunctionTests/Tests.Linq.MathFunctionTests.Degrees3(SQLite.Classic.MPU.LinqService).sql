BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Degrees(Cast([p].[MoneyValue] as INTEGER)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast([t].[c1] as Float) <> 0.10000000000000001

