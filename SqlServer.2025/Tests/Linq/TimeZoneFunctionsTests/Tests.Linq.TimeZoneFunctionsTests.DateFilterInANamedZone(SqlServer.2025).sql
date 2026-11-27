-- SqlServer.2025
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'
DECLARE @date DateTime2
SET     @date = DATETIME2FROMPARTS(2020, 6, 15, 0, 0, 0, 0, 7)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST(CAST(([r].[Dto] AT TIME ZONE @zone) AS DateTime2) AS Date) = @date

-- SqlServer.2025
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'
DECLARE @later DateTime2
SET     @later = DATETIME2FROMPARTS(2020, 6, 15, 1, 0, 0, 0, 7)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST(CAST(([r].[Dto] AT TIME ZONE @zone) AS DateTime2) AS Date) = @later

-- SqlServer.2025
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(2020, 6, 16, 0, 0, 0, 0, 7)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST(ToDateTimeOffset(DateAdd(day, 1, CAST(([r].[Dto] AT TIME ZONE @zone) AS DateTime2)), DatePart(tz, ([r].[Dto] AT TIME ZONE @zone))) AS Date) = @p

-- SqlServer.2025
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(2020, 6, 16, 1, 0, 0, 0, 7)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST(ToDateTimeOffset(DateAdd(day, 1, CAST(([r].[Dto] AT TIME ZONE @zone) AS DateTime2)), DatePart(tz, ([r].[Dto] AT TIME ZONE @zone))) AS Date) = @p

