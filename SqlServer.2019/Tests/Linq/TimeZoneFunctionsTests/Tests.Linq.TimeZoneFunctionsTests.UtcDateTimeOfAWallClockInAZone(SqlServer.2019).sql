-- SqlServer.2019
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2019
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'

SELECT TOP (2)
	CAST(((CAST([r].[Dto] AS DateTime2) AT TIME ZONE @zone) AT TIME ZONE N'UTC') AS DateTime2)
FROM
	[ZonedRow] [r]

