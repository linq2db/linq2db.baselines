-- Sybase.Managed Sybase
SELECT
	CAST([t].[D] AS Int) / 2
FROM
	[DoubleStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[DoubleStoredIntegerTable] [t1]

-- Sybase.Managed Sybase
SELECT
	[t].[Id]
FROM
	[DoubleStoredIntegerTable] [t]
WHERE
	CAST([t].[D] AS Int) / 2 = -3
ORDER BY
	[t].[Id]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[DoubleStoredIntegerTable] [t1]

