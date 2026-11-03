-- SQLite.Classic SQLite
SELECT
	[r].[Plain] || [r].[Conv]
FROM
	[PlainAndConvertedUnicodeRow] [r]
ORDER BY
	[r].[Id]
LIMIT 1

-- SQLite.Classic SQLite
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] || [r].[Conv]) = @read

-- SQLite.Classic SQLite
DECLARE @read NVarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] || [r].[Conv]) <> @read

-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] || [r].[Conv]) IN ('A-x:n1')

