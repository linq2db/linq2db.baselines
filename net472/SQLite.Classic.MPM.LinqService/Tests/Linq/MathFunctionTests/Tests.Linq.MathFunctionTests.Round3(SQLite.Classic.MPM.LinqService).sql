BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN [p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1)
			THEN Round([p].[MoneyValue] / 2, 1) * 2
		ELSE Round([p].[MoneyValue], 1)
	END
FROM
	[LinqDataTypes] [p]
WHERE
	(CASE
		WHEN [p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1)
			THEN Round([p].[MoneyValue] / 2, 1) * 2
		ELSE Round([p].[MoneyValue], 1)
	END <> 0 OR CASE
		WHEN [p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1)
			THEN Round([p].[MoneyValue] / 2, 1) * 2
		ELSE Round([p].[MoneyValue], 1)
	END IS NULL) AND
	(CASE
		WHEN [p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1)
			THEN Round([p].[MoneyValue] / 2, 1) * 2
		ELSE Round([p].[MoneyValue], 1)
	END <> 7 OR CASE
		WHEN [p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1)
			THEN Round([p].[MoneyValue] / 2, 1) * 2
		ELSE Round([p].[MoneyValue], 1)
	END IS NULL)

