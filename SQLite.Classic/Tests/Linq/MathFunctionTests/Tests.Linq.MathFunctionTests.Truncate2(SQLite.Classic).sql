-- SQLite.Classic SQLite

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			CASE
				WHEN CAST(-[p].[MoneyValue] AS FloatDouble) >= 0 THEN Floor(CAST(-[p].[MoneyValue] AS FloatDouble))
				ELSE Ceiling(CAST(-[p].[MoneyValue] AS FloatDouble))
			END as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

