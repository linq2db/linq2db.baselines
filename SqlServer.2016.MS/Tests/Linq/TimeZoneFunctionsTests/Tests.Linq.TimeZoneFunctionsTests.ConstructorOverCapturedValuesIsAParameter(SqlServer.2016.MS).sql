-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2016.MS SqlServer.2016
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2020, 6, 15, 12, 0, 0, 0, 0, 40, 7)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	[r].[Dto] = @p

