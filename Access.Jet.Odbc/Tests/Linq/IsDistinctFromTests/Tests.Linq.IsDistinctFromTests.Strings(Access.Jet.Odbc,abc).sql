-- Access.Jet.Odbc AccessODBC
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NULL OR [s].[String] <> ?

-- Access.Jet.Odbc AccessODBC
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NULL OR [s].[NullableString] <> ?

-- Access.Jet.Odbc AccessODBC
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] IS NULL OR [s].[String] <> ?)

-- Access.Jet.Odbc AccessODBC
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] IS NULL OR [s].[NullableString] <> ?)

