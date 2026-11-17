-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(CASE
		WHEN [t].[Code] IS NULL THEN ''
		ELSE [t].[Code]
	END + CASE
		WHEN [t].[Title] IS NULL THEN ''
		ELSE [t].[Title]
	END) LIKE @Code

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(CASE
		WHEN [t].[Code] IS NULL THEN ''
		ELSE [t].[Code]
	END + CASE
		WHEN [t].[Title] IS NULL THEN ''
		ELSE [t].[Title]
	END) = @bound

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(CASE
		WHEN [t].[Code] IS NULL THEN ''
		ELSE [t].[Code]
	END + CASE
		WHEN [t].[Title] IS NULL THEN ''
		ELSE [t].[Title]
	END) = @bound

