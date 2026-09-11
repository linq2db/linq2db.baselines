-- SqlCe
SELECT
	[r].[Id],
	DateAdd(millisecond, (([r].[Grace] * 10000000) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (([r].[Grace] * 10000000) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, ([r].[Grace] * 10000000) / CAST(864000000000 AS BigInt), '2026-03-01 00:00:00.000'))),
	DateAdd(millisecond, (([r].[Required] * 10000000) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (([r].[Required] * 10000000) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, ([r].[Required] * 10000000) / CAST(864000000000 AS BigInt), '2026-03-01 00:00:00.000')))
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

