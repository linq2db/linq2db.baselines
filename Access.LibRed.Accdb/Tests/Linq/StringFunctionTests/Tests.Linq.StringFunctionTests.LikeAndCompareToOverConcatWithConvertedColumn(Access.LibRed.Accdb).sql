-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[r].[Plain] + [r].[Conv]
FROM
	[PlainAndConvertedUnicodeTable] [r]
ORDER BY
	[r].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeTable] [r]
WHERE
	([r].[Plain] + [r].[Conv]) LIKE @read

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeTable] [r]
WHERE
	([r].[Plain] + [r].[Conv]) = @read

