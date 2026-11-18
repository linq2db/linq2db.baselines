-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id],
	DateAdd(millisecond, CAST((([r].[Grace] * 10000000) % 10000000) / 10000 AS Int), DateAdd(second, CAST((([r].[Grace] * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(([r].[Grace] * 10000000) / 864000000000 AS Int), CAST(CAST('2026-03-01T00:00:00.000' AS DATETIME) AS DateTime)))),
	DateAdd(millisecond, CAST((([r].[Required] * 10000000) % 10000000) / 10000 AS Int), DateAdd(second, CAST((([r].[Required] * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(([r].[Required] * 10000000) / 864000000000 AS Int), CAST(CAST('2026-03-01T00:00:00.000' AS DATETIME) AS DateTime))))
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

