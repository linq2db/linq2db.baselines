-- SqlServer.2017.MS SqlServer.2017
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	(CAST([r].[Dto] AS DateTime2) AT TIME ZONE @zone) < [r].[Dto]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'

SELECT
	[r].[Id]
FROM
	[ZonedRow] [r]
ORDER BY
	(CAST([r].[Dto] AS DateTime2) AT TIME ZONE @zone) DESC

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2017.MS SqlServer.2017
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'

UPDATE
	[ZonedRow]
SET
	[Dto] = (CAST([ZonedRow].[Dto] AS DateTime2) AT TIME ZONE @zone)
WHERE
	[ZonedRow].[Id] = 1

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]
WHERE
	[r].[Id] = 1

