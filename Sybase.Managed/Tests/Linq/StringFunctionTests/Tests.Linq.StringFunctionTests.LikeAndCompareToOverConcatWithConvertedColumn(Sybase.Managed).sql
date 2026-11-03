-- Sybase.Managed Sybase
SELECT TOP 1
	[r].[Plain] || [r].[Conv]
FROM
	PlainAndConvertedUnicodeTable [r]
ORDER BY
	[r].[Id]

-- Sybase.Managed Sybase
DECLARE @read UniVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeTable [r]
WHERE
	([r].[Plain] || [r].[Conv]) LIKE @read

-- Sybase.Managed Sybase
DECLARE @read UniVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeTable [r]
WHERE
	([r].[Plain] || [r].[Conv]) = @read

