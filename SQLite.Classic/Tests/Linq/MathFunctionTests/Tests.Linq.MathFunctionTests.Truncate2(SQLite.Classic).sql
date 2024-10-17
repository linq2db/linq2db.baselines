BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN CAST(-[p].[MoneyValue] AS Float) >= 0 THEN Floor(CAST(-[p].[MoneyValue] AS Float))
				ELSE Ceiling(CAST(-[p].[MoneyValue] AS Float))
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.10000000000000001

