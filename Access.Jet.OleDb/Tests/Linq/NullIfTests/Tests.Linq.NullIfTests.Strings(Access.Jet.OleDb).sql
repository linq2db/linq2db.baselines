-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[String] = 'abc', NULL, [s].[String])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[String] = 'abc' OR [x].[String] IS NULL

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[String] = 'abc' OR [x].[String] IS NULL)

-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[String] = 'xyz', NULL, [s].[String])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[String] = 'xyz' OR [x].[String] IS NULL

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[String] = 'xyz' OR [x].[String] IS NULL)

-- Access.Jet.OleDb AccessOleDb

SELECT
	[s].[String]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[String] IS NULL

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[String] IS NOT NULL

-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[NullableString] = 'abc', NULL, [s].[NullableString])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableString] = 'abc' OR [x].[NullableString] IS NULL

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableString] = 'abc' OR [x].[NullableString] IS NULL)

-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[NullableString] = 'xyz', NULL, [s].[NullableString])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableString] = 'xyz' OR [x].[NullableString] IS NULL

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableString] = 'xyz' OR [x].[NullableString] IS NULL)

-- Access.Jet.OleDb AccessOleDb

SELECT
	[s].[NullableString]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableString] IS NULL

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableString] IS NOT NULL

