-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	CAST(CAST(DatePart(tz, [r].[Dto]) AS BigInt) * 600000000 AS Float) / 600000000,
	-(CAST(DatePart(tz, [r].[Dto]) AS BigInt) * 600000000)
FROM
	[ZonedRow] [r]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 12000000000
DECLARE @Ticks_1 BigInt -- Int64
SET     @Ticks_1 = 36000000000

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST(CAST(DatePart(tz, [r].[Dto]) AS BigInt) * 600000000 + @Ticks AS BigInt) = @Ticks_1

