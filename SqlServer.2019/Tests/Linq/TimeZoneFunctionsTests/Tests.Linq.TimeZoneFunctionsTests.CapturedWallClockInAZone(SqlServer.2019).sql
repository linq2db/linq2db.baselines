-- SqlServer.2019
DECLARE @local DateTime2
SET     @local = DATETIME2FROMPARTS(2020, 6, 15, 12, 0, 0, 0, 7)
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	[r].[Dto] > (@local AT TIME ZONE @zone)

