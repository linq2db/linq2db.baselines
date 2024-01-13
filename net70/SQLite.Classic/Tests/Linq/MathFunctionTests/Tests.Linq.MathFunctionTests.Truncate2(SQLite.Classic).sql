BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			CASE
				WHEN Cast((-[t].[MoneyValue]) as Float) >= 0
					THEN Floor(Cast((-[t].[MoneyValue]) as Float))
				ELSE Ceiling(Cast((-[t].[MoneyValue]) as Float))
			END as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	([t_1].[c1] <> 0.10000000000000001 OR [t_1].[c1] IS NULL)

