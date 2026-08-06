-- Access.Ace.Odbc AccessODBC
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NULL OR [s].[String] <> ?

-- Access.Ace.Odbc AccessODBC
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NULL OR [s].[NullableString] <> ?

-- Access.Ace.Odbc AccessODBC
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] IS NULL OR [s].[String] <> ?)

-- Access.Ace.Odbc AccessODBC
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] IS NULL OR [s].[NullableString] <> ?)

