-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (1)
	[r].[Plain] + [r].[Conv]
FROM
	[PlainAndConvertedUnicodeRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @read NVarChar(4000) -- String
SET     @read = N'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) = @read

-- SqlServer.2005.MS SqlServer.2005
DECLARE @read NVarChar(4000) -- String
SET     @read = N'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) <> @read

-- SqlServer.2005.MS SqlServer.2005
SELECT
	CASE
		WHEN N'A-x:n1' IN (
			SELECT
				[r].[Plain] + [r].[Conv]
			FROM
				[PlainAndConvertedUnicodeRow] [r]
		)
			THEN 1
		ELSE 0
	END

-- SqlServer.2005.MS SqlServer.2005
SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) IN (N'A-x:n1')

