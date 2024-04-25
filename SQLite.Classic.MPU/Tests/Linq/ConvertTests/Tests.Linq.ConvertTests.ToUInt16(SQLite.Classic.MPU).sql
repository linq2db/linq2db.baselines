BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			CAST([p].[MoneyValue] AS Int) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

