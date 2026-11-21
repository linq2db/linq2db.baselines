-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN [p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, 5) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], 5)
			THEN ROUND(CAST([p].[MoneyValue] AS Float) / 2, 5) * 2
		ELSE ROUND([p].[MoneyValue], 5)
	END
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0

