-- Access.Ace.OleDb AccessOleDb
SELECT TOP 2
	IIF([t].[Code] IS NULL, '', [t].[Code]) + IIF([t].[Title] IS NULL, '', [t].[Title])
FROM
	[PrefixedCodeWithTitle] [t]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	COUNT(*) > 0
FROM
	[PrefixedCodeWithTitle] [t]
WHERE
	(IIF([t].[Code] IS NULL, '', [t].[Code]) + IIF([t].[Title] IS NULL, '', [t].[Title])) = @Code

