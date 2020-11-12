BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN [p].[MoneyValue] < 5 THEN [p].[MoneyValue]
		ELSE 5
	END
FROM
	[LinqDataTypes] [p]
WHERE
	CASE
		WHEN [p].[MoneyValue] < 5 THEN [p].[MoneyValue]
		ELSE 5
	END <> 0

