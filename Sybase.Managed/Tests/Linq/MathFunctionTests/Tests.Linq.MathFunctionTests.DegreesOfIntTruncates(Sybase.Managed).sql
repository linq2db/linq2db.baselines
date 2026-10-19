-- Sybase.Managed Sybase
SELECT
	CAST(CAST([d].[M] AS Int) AS Float) * 57.295779513082323
FROM
	[DegreesValue] [d]
WHERE
	CAST(CAST(CAST(CAST([d].[M] AS Int) AS Float) * 57.295779513082323 AS Int) AS Float) < 57.100000000000001

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[M]
FROM
	[DegreesValue] [t1]

