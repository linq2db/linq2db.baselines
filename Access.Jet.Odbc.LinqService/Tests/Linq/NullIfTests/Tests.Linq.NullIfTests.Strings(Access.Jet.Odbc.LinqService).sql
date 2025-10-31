BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	IIF([s].[String] = 'abc', NULL, [s].[String])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] = 'abc' OR [s].[String] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] = 'abc' OR [s].[String] IS NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	IIF([s].[String] = 'xyz', NULL, [s].[String])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] = 'xyz' OR [s].[String] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] = 'xyz' OR [s].[String] IS NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[s].[String]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	IIF([s].[NullableString] = 'abc', NULL, [s].[NullableString])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] = 'abc' OR [s].[NullableString] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] = 'abc' OR [s].[NullableString] IS NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	IIF([s].[NullableString] = 'xyz', NULL, [s].[NullableString])
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] = 'xyz' OR [s].[NullableString] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] = 'xyz' OR [s].[NullableString] IS NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[s].[NullableString]
FROM
	[Src] [s]
ORDER BY
	[s].[Int]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT NULL

