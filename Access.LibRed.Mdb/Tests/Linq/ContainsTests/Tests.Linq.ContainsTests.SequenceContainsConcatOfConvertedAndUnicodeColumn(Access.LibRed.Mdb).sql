-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	IIF([t].[Code] IS NULL, '', [t].[Code]) + IIF([t].[Title] IS NULL, '', [t].[Title])
FROM
	[PrefixedCodeWithTitle] [t]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	COUNT(*) > 0
FROM
	[PrefixedCodeWithTitle] [t]
WHERE
	(IIF([t].[Code] IS NULL, '', [t].[Code]) + IIF([t].[Title] IS NULL, '', [t].[Title])) = @Code

