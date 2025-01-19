BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @value VarWChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NULL OR [s].[String] <> @value

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @value VarWChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NULL OR [s].[NullableString] <> @value

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @value VarWChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[String] IS NULL OR [s].[String] <> @value)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @value VarWChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	NOT ([s].[NullableString] IS NULL OR [s].[NullableString] <> @value)

