BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Degrees(Cast([t].[MoneyValue] as Float)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0.10000000000000001

