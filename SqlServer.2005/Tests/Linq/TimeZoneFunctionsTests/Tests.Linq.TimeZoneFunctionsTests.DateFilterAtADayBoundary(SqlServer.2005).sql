-- SqlServer.2005
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2005
DECLARE @date DateTime
SET     @date = CAST('2020-12-31T00:00:00.000' AS DATETIME)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	DateAdd(dd, DateDiff(dd, 0, [r].[Dto]), 0) = @date

-- SqlServer.2005
DECLARE @later DateTime
SET     @later = CAST('2020-12-31T01:00:00.000' AS DATETIME)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	DateAdd(dd, DateDiff(dd, 0, [r].[Dto]), 0) = @later

