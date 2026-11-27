-- SqlServer.2022
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2022
DECLARE @date DateTime2
SET     @date = DATETIME2FROMPARTS(2021, 1, 1, 0, 0, 0, 0, 7)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST([r].[Dto] AS Date) = @date

-- SqlServer.2022
DECLARE @later DateTime2
SET     @later = DATETIME2FROMPARTS(2021, 1, 1, 1, 0, 0, 0, 7)

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST([r].[Dto] AS Date) = @later

