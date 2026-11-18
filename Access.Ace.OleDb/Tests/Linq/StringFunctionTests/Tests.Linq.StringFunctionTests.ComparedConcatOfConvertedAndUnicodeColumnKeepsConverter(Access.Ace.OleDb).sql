-- Access.Ace.OleDb AccessOleDb
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(IIF([t].[Code] IS NULL, '', [t].[Code]) + IIF([t].[Title] IS NULL, '', [t].[Title])) LIKE @Code

-- Access.Ace.OleDb AccessOleDb
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(IIF([t].[Code] IS NULL, '', [t].[Code]) + IIF([t].[Title] IS NULL, '', [t].[Title])) = @bound

-- Access.Ace.OleDb AccessOleDb
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(IIF([t].[Code] IS NULL, '', [t].[Code]) + IIF([t].[Title] IS NULL, '', [t].[Title])) = @bound

