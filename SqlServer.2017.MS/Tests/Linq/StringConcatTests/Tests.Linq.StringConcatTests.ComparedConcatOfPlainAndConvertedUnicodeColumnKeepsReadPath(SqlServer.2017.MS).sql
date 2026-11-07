-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (1)
	[r].[Plain] + [r].[Conv]
FROM
	[PlainAndConvertedUnicodeRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @read NVarChar(4000) -- String
SET     @read = N'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) = @read

-- SqlServer.2017.MS SqlServer.2017
DECLARE @read NVarChar(4000) -- String
SET     @read = N'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) <> @read

-- SqlServer.2017.MS SqlServer.2017
SELECT
	IIF(N'A-x:n1' IN (
		SELECT
			[r].[Plain] + [r].[Conv]
		FROM
			[PlainAndConvertedUnicodeRow] [r]
	), 1, 0)

-- SqlServer.2017.MS SqlServer.2017
SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) IN (N'A-x:n1')

