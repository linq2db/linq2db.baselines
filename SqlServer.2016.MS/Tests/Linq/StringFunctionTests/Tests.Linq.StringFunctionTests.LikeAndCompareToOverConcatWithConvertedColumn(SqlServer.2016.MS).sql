-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (1)
	[r].[Plain] + [r].[Conv]
FROM
	[PlainAndConvertedUnicodeTable] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2016.MS SqlServer.2016
DECLARE @read NVarChar(4000) -- String
SET     @read = N'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeTable] [r]
WHERE
	([r].[Plain] + [r].[Conv]) LIKE @read

-- SqlServer.2016.MS SqlServer.2016
DECLARE @read NVarChar(4000) -- String
SET     @read = N'A-x:n1'

SELECT
	COUNT(*)
FROM
	[PlainAndConvertedUnicodeTable] [r]
WHERE
	([r].[Plain] + [r].[Conv]) = @read

