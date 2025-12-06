-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([s].[String] = 'abc', NULL, [s].[String])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] = 'abc' OR [s].[String] IS NULL

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] = 'abc' OR [s].[String] IS NULL)

-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([s].[String] = 'xyz', NULL, [s].[String])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] = 'xyz' OR [s].[String] IS NULL

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] = 'xyz' OR [s].[String] IS NULL)

-- Access.Ace.OleDb AccessOleDb

SELECT
	[s].[String]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NULL

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT NULL

-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([s].[NullableString] = 'abc', NULL, [s].[NullableString])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] = 'abc' OR [s].[NullableString] IS NULL

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] = 'abc' OR [s].[NullableString] IS NULL)

-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([s].[NullableString] = 'xyz', NULL, [s].[NullableString])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] = 'xyz' OR [s].[NullableString] IS NULL

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] = 'xyz' OR [s].[NullableString] IS NULL)

-- Access.Ace.OleDb AccessOleDb

SELECT
	[s].[NullableString]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NULL

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT NULL

