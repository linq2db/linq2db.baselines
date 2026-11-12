-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[r].[Plain] + [r].[Conv]
FROM
	[PlainAndConvertedUnicodeRow] [r]
ORDER BY
	[r].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) = @read

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) <> @read

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*) > 0
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) = 'A-x:n1'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) IN ('A-x:n1')

