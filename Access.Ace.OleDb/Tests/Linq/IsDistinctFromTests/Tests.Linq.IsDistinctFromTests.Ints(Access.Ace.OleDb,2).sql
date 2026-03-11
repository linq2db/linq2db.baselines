-- Access.Ace.OleDb AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] <> @value

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NULL OR [s].[NullableInt] <> @value

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] = @value

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableInt] IS NULL OR [s].[NullableInt] <> @value)

