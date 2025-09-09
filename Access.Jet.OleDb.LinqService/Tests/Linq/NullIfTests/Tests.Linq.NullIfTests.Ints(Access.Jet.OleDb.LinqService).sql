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
	[Src] [x]
WHERE
	[x].[Int] = 2

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[Int] <> 2

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
	[Src] [x]
WHERE
	[x].[Int] = 4

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[Int] <> 4

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
	[Src] [x]
WHERE
	1 = 0

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [x]

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
	[Src] [x]
WHERE
	[x].[NullableInt] = 2 OR [x].[NullableInt] IS NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableInt] = 2 OR [x].[NullableInt] IS NULL)

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
	[Src] [x]
WHERE
	[x].[NullableInt] = 4 OR [x].[NullableInt] IS NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	NOT ([x].[NullableInt] = 4 OR [x].[NullableInt] IS NULL)

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
	[Src] [x]
WHERE
	[x].[NullableInt] IS NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [x]
WHERE
	[x].[NullableInt] IS NOT NULL

