-- Access.Ace.OleDb AccessOleDb
SELECT TOP 1
	[r].[Plain] + [r].[Conv]
FROM
	[PlainAndConvertedUnicodeTable] [r]
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @read VarWChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeTable] [r]
WHERE
	([r].[Plain] + [r].[Conv]) LIKE @read

-- Access.Ace.OleDb AccessOleDb
DECLARE @read VarWChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeTable] [r]
WHERE
	([r].[Plain] + [r].[Conv]) = @read

