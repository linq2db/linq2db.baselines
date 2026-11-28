-- SqlServer.Contained SqlServer.2025
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'

SELECT TOP (2)
	DatePart(hour, DateAdd(hour, 1, DateAdd(month, 1, ToDateTimeOffset(DateAdd(day, 10, CAST(([r].[Dto] AT TIME ZONE @zone) AS DateTime2)), DatePart(tz, ([r].[Dto] AT TIME ZONE @zone))))))
FROM
	[ZonedRow] [r]

