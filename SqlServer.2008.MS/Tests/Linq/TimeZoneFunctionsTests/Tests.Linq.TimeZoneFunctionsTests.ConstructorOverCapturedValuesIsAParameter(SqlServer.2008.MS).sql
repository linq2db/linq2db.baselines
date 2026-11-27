-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p DateTimeOffset
SET     @p = CAST('2020-06-15T12:00:00.0000000+00:40' AS DATETIMEOFFSET)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	[r].[Dto] = @p

