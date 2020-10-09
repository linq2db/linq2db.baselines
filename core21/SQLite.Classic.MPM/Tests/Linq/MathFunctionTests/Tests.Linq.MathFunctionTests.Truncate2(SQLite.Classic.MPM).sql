BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN Cast((-[p].[MoneyValue]) as Float) >= 0
					THEN Floor(Cast((-[p].[MoneyValue]) as Float))
				ELSE Ceiling(Cast((-[p].[MoneyValue]) as Float))
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] <> 0.10000000000000001 OR [t].[c1] IS NULL)

