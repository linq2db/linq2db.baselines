-- SqlServer.2016
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'

SELECT TOP (2)
	DatePart(hour, CAST(([r].[Dto] AT TIME ZONE @zone) AS DateTime2))
FROM
	[ZonedRow] [r]

-- SqlServer.2016
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'

SELECT TOP (2)
	DatePart(hour, CAST(([r].[Dto] AT TIME ZONE @zone) AS DateTime2))
FROM
	[ZonedRow] [r]

