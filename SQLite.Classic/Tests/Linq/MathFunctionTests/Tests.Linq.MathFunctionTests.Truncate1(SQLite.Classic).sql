BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			CASE
				WHEN [t].[MoneyValue] >= 0 THEN Floor([t].[MoneyValue])
				ELSE Ceiling([t].[MoneyValue])
			END as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0.1

