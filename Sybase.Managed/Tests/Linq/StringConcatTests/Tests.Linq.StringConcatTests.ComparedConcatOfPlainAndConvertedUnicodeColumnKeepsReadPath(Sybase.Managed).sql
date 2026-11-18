-- Sybase.Managed Sybase
SELECT TOP 1
	[r].[Plain] || [r].[Conv]
FROM
	[PlainAndConvertedUnicodeRow] [r]
ORDER BY
	[r].[Id]

-- Sybase.Managed Sybase
DECLARE @read UniVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] || [r].[Conv]) = @read

-- Sybase.Managed Sybase
DECLARE @read UniVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] || [r].[Conv]) <> @read

-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN 'A-x:n1' IN (
			SELECT
				[r].[Plain] || [r].[Conv]
			FROM
				[PlainAndConvertedUnicodeRow] [r]
		)
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] || [r].[Conv]) IN ('A-x:n1')

