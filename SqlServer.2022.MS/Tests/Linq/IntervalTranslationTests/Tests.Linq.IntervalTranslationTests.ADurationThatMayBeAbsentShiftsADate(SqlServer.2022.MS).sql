-- SqlServer.2022.MS SqlServer.2022
SELECT
	[r].[Id],
	DateAdd(nanosecond, CAST((([r].[Grace] * 10000000) % 10000000) * 100 AS Int), DateAdd(second, CAST((([r].[Grace] * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(([r].[Grace] * 10000000) / 864000000000 AS Int), DATETIME2FROMPARTS(2026, 3, 1, 0, 0, 0, 0, 7)))),
	DateAdd(nanosecond, CAST((([r].[Required] * 10000000) % 10000000) * 100 AS Int), DateAdd(second, CAST((([r].[Required] * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(([r].[Required] * 10000000) / 864000000000 AS Int), DATETIME2FROMPARTS(2026, 3, 1, 0, 0, 0, 0, 7))))
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

