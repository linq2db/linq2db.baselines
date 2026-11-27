-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @date DateTime2
SET     @date = CAST('2021-01-01T00:00:00.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST([r].[Dto] AS Date) = @date

-- SqlServer.2008.MS SqlServer.2008
DECLARE @later DateTime2
SET     @later = CAST('2021-01-01T01:00:00.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST([r].[Dto] AS Date) = @later

