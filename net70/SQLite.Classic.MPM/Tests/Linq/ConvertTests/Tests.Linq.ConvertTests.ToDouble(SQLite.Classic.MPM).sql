BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Cast(Cast([t].[MoneyValue] as Float) as INTEGER) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

