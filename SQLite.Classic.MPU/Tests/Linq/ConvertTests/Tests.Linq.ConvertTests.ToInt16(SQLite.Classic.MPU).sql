BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[c1]
FROM
	(
		SELECT
			CAST([t].[MoneyValue] AS SmallInt) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

