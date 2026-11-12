-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	([p].[Conv] + [p].[Title]) = @bound

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	@bound = ([p].[Conv] + [p].[Title])

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	([p].[Conv] + [p].[Title]) IN ('x:c1T')

