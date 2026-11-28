-- SqlServer.2014
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 24000000000

SELECT
	COUNT(*)
FROM
	(
		SELECT
			CAST(DatePart(tz, [r].[Dto]) AS BigInt) * 600000000 as [Offset_1]
		FROM
			[ZonedRow] [r]
	) [t1]
WHERE
	[t1].[Offset_1] = @Ticks

-- SqlServer.2014
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 24000000000

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[ZonedRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MAX(CAST(DatePart(tz, [g_1].[Dto]) AS BigInt) * 600000000) = @Ticks
	) [t1]

-- SqlServer.2014
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 24000000000

SELECT
	COUNT(*)
FROM
	[ZonedRow] [a]
		LEFT JOIN (
			SELECT
				[b].[Id],
				CAST(DatePart(tz, [b].[Dto]) AS BigInt) * 600000000 as [Offset_1]
			FROM
				[ZonedRow] [b]
		) [b_1] ON [a].[Id] + 1 = [b_1].[Id]
WHERE
	IIF([b_1].[Id] IS NULL, CAST(DatePart(tz, [a].[Dto]) AS BigInt) * 600000000, [b_1].[Offset_1]) = @Ticks

