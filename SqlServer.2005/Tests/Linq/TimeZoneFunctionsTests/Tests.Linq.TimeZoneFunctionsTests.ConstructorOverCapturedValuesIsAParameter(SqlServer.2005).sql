-- SqlServer.2005
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2005
DECLARE @p DateTime
SET     @p = CAST('2020-06-15T11:20:00.000' AS DATETIME)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	[r].[Dto] = @p

