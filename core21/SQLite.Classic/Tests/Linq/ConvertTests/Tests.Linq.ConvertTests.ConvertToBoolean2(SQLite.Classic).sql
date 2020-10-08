BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[c1]
FROM
	(
		SELECT
			CASE
				WHEN [t].[MoneyValue] - 4.5 = 0
					THEN 0
				ELSE 1
			END as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	([p].[c1] = 0 OR [p].[c1] IS NULL)

