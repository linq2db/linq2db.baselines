-- SQLite.Classic SQLite
SELECT
	CAST(Power(CAST([r].[D] AS Float), CAST(0.00005 AS Float)) AS Decimal(18, 4)) + [r].[D]
FROM
	[PowScale] [r]
LIMIT 2

