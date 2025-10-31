BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	IIF([s].[Int] = 2, NULL, [s].[Int])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 2

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 2

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	IIF([s].[Int] = 4, NULL, [s].[Int])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 4

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 4

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[s].[Int]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	1 = 0

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	IIF([s].[NullableInt] = 2, NULL, [s].[NullableInt])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	IIF([s].[NullableInt] = 4, NULL, [s].[NullableInt])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

