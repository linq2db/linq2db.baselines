-- Sybase.Managed Sybase

SELECT
	NULLIF([s].[Int], 2)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 2

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 2

-- Sybase.Managed Sybase

SELECT
	NULLIF([s].[Int], 4)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 4

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 4

-- Sybase.Managed Sybase

SELECT
	[s].[Int]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	1 = 0

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Src] [s]

-- Sybase.Managed Sybase

SELECT
	NULLIF([s].[NullableInt], 2)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL)

-- Sybase.Managed Sybase

SELECT
	NULLIF([s].[NullableInt], 4)
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL)

-- Sybase.Managed Sybase

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

