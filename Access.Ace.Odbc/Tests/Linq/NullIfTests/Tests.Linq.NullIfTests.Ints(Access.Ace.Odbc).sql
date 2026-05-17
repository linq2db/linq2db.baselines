-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([s].[Int] = 2, NULL, [s].[Int])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 2

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 2

-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([s].[Int] = 4, NULL, [s].[Int])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 4

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 4

-- Access.Ace.Odbc AccessODBC

SELECT
	[s].[Int]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	1 = 0

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]

-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([s].[NullableInt] = 2, NULL, [s].[NullableInt])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL)

-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([s].[NullableInt] = 4, NULL, [s].[NullableInt])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL)

-- Access.Ace.Odbc AccessODBC

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

