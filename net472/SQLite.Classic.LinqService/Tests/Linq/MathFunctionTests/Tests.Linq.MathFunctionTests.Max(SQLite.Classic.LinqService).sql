BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CASE
		WHEN [p].[MoneyValue] > 5.1
			THEN [p].[MoneyValue]
		ELSE 5.1
	END
FROM
	[LinqDataTypes] [p]
WHERE
	(CASE
		WHEN [p].[MoneyValue] > 5.1
			THEN [p].[MoneyValue]
		ELSE 5.1
	END <> 0 OR CASE
		WHEN [p].[MoneyValue] > 5.1
			THEN [p].[MoneyValue]
		ELSE 5.1
	END IS NULL)

