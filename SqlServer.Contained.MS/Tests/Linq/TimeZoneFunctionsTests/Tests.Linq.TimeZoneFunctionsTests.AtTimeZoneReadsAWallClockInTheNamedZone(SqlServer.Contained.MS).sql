-- SqlServer.Contained.MS SqlServer.2019
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'

SELECT TOP (2)
	(CAST([r].[Dto] AS DateTime2) AT TIME ZONE @zone)
FROM
	[ZonedRow] [r]

