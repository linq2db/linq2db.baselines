BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			CASE
				WHEN [p].[MoneyValue] >= 0 THEN Floor([p].[MoneyValue])
				ELSE Ceiling([p].[MoneyValue])
			END as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.1

