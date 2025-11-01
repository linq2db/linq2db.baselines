-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([s].[String] = 'abc', NULL, [s].[String])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[String] = 'abc' OR [x].[String] IS NULL

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[String] = 'abc' OR [x].[String] IS NULL)

-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([s].[String] = 'xyz', NULL, [s].[String])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[String] = 'xyz' OR [x].[String] IS NULL

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[String] = 'xyz' OR [x].[String] IS NULL)

-- Access.Ace.Odbc AccessODBC

SELECT
	[s].[String]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[String] IS NULL

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[String] IS NOT NULL

-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([s].[NullableString] = 'abc', NULL, [s].[NullableString])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableString] = 'abc' OR [x].[NullableString] IS NULL

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableString] = 'abc' OR [x].[NullableString] IS NULL)

-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([s].[NullableString] = 'xyz', NULL, [s].[NullableString])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableString] = 'xyz' OR [x].[NullableString] IS NULL

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableString] = 'xyz' OR [x].[NullableString] IS NULL)

-- Access.Ace.Odbc AccessODBC

SELECT
	[s].[NullableString]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableString] IS NULL

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableString] IS NOT NULL

