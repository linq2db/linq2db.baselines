-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[Int] = 2, NULL, [s].[Int])
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
	[x].[Int] = 2

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[Int] <> 2

-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[Int] = 4, NULL, [s].[Int])
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
	[x].[Int] = 4

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[Int] <> 4

-- Access.Jet.OleDb AccessOleDb

SELECT
	[s].[Int]
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
	1 = 0

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]

-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[NullableInt] = 2, NULL, [s].[NullableInt])
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
	[x].[NullableInt] = 2 OR [x].[NullableInt] IS NULL

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableInt] = 2 OR [x].[NullableInt] IS NULL)

-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([s].[NullableInt] = 4, NULL, [s].[NullableInt])
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
	[x].[NullableInt] = 4 OR [x].[NullableInt] IS NULL

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableInt] = 4 OR [x].[NullableInt] IS NULL)

-- Access.Jet.OleDb AccessOleDb

SELECT
	[s].[NullableInt]
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
	[x].[NullableInt] IS NULL

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableInt] IS NOT NULL

