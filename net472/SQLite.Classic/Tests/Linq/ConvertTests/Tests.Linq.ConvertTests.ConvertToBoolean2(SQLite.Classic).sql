BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CASE
		WHEN [t].[MoneyValue] - 4.5 <> 0
			THEN 1
		ELSE 0
	END
FROM
	[LinqDataTypes] [t]
WHERE
	(NOT ([t].[MoneyValue] - 4.5 <> 0))

