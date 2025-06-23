BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL OR [s].[NullableInt] <> ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT [s].[Int] <> ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] IS NULL OR [s].[NullableInt] <> ?)

