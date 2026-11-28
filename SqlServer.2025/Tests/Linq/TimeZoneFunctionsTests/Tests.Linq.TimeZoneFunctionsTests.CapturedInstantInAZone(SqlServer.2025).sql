-- SqlServer.2025
DECLARE @instant DateTimeOffset
SET     @instant = DATETIMEOFFSETFROMPARTS(2020, 6, 15, 9, 0, 0, 0, 0, 0, 7)
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	[r].[Dto] > (@instant AT TIME ZONE @zone)

