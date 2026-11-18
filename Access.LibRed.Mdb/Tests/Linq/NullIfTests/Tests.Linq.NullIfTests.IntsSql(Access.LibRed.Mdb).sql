-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [s].[Int] = 2 THEN NULL
		ELSE [s].[Int]
	END
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 2

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 2

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [s].[Int] = 4 THEN NULL
		ELSE [s].[Int]
	END
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 4

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 4

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[s].[Int]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	1 = 0

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Src] [s]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [s].[NullableInt] = 2 THEN NULL
		ELSE [s].[NullableInt]
	END
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [s].[NullableInt] = 4 THEN NULL
		ELSE [s].[NullableInt]
	END
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[s].[NullableInt]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

