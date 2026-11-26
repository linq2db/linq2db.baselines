-- Sybase.Managed Sybase
SELECT
	CAST([t].[X] AS Int) / 2
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Sybase.Managed Sybase
SELECT
	[t].[Id]
FROM
	[DecimalStoredIntegerTable] [t]
WHERE
	CAST([t].[X] AS Int) / 2 = -3
ORDER BY
	[t].[Id]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Sybase.Managed Sybase
DECLARE @two Decimal
SET     @two = 2

SELECT
	CAST([t].[X] AS Int) / CAST(@two AS Int)
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Sybase.Managed Sybase
SELECT
	CAST([t].[X] + 1 AS Int) / 2
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Sybase.Managed Sybase
SELECT
	CAST(-[t].[X] AS Int) / 2
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Sybase.Managed Sybase
SELECT
	CAST(Abs([t].[X]) AS Int) / 2
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Sybase.Managed Sybase
SELECT
	60 / CAST([t].[X] AS Int)
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Sybase.Managed Sybase
SELECT
	CAST([t].[X] AS Int) / CAST([t].[X2] AS Int)
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Sybase.Managed Sybase
SELECT TOP 2
	CAST(SUM([g_1].[X]) AS Int) / 2
FROM
	[DecimalStoredIntegerTable] [g_1]

