BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CAST([p_1].[c1] AS INTEGER)
FROM
	(
		SELECT
			CAST([p].[MoneyValue] AS Real) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

