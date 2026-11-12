-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(IIF([t].[Code] IS NULL, '', [t].[Code]) + IIF([t].[Title] IS NULL, '', [t].[Title])) LIKE @Code

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(IIF([t].[Code] IS NULL, '', [t].[Code]) + IIF([t].[Title] IS NULL, '', [t].[Title])) = @bound

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(IIF([t].[Code] IS NULL, '', [t].[Code]) + IIF([t].[Title] IS NULL, '', [t].[Title])) = @bound

