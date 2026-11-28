-- SqlServer.2019
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 24000000000

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST(DatePart(tz, [r].[Dto]) AS BigInt) * 600000000 = @Ticks

-- SqlServer.2019
SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST(DatePart(tz, [r].[Dto]) AS BigInt) * 600000000 = 0

