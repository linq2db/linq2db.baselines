-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (1)
	[r].[Plain] + [r].[Conv]
FROM
	[PlainAndConvertedUnicodeRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2016.MS SqlServer.2016
DECLARE @read NVarChar(4000) -- String
SET     @read = N'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) = @read

-- SqlServer.2016.MS SqlServer.2016
DECLARE @read NVarChar(4000) -- String
SET     @read = N'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) <> @read

-- SqlServer.2016.MS SqlServer.2016
SELECT
	IIF(N'A-x:n1' IN (
		SELECT
			[r].[Plain] + [r].[Conv]
		FROM
			[PlainAndConvertedUnicodeRow] [r]
	), 1, 0)

-- SqlServer.2016.MS SqlServer.2016
SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeRow] [r]
WHERE
	([r].[Plain] + [r].[Conv]) IN (N'A-x:n1')

