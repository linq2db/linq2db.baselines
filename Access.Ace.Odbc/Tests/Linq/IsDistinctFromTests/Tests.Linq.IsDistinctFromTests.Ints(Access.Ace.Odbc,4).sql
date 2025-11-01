-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> ?

-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL OR [s].[NullableInt] <> ?

-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] IS NULL OR [s].[NullableInt] <> ?)

