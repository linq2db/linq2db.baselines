-- SqlServer.CS SqlServer.2025
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 24000000000

SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST(DatePart(tz, [r].[Dto]) AS BigInt) * 600000000 = @Ticks

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ZonedRow] [r]
WHERE
	CAST(DatePart(tz, [r].[Dto]) AS BigInt) * 600000000 = 0

