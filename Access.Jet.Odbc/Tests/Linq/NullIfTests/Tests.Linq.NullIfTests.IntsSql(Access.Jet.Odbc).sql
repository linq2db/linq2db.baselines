BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	IIF([s].[Int] = 2, NULL, [s].[Int])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 2

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 2

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	IIF([s].[Int] = 4, NULL, [s].[Int])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[s].[Int]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	1 = 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	IIF([s].[NullableInt] = 2, NULL, [s].[NullableInt])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 2 OR [s].[NullableInt] IS NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	IIF([s].[NullableInt] = 4, NULL, [s].[NullableInt])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] = 4 OR [s].[NullableInt] IS NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[s].[NullableInt]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT NULL

