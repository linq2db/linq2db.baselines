-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.CS.MS SqlServer.2025
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2020, 6, 15, 12, 0, 0, 0, 0, 40, 7)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	[r].[Dto] = @p

