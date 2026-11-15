-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	DateAdd('ms', Fix(([r].[Grace] * 10000000 MOD 10000000) / 10000), DateAdd('s', Fix(([r].[Grace] * 10000000 MOD 864000000000) / 10000000), DateAdd('d', Fix(([r].[Grace] * 10000000) / 864000000000), #2026-03-01#))),
	DateAdd('ms', Fix(([r].[Required] * 10000000 MOD 10000000) / 10000), DateAdd('s', Fix(([r].[Required] * 10000000 MOD 864000000000) / 10000000), DateAdd('d', Fix(([r].[Required] * 10000000) / 864000000000), #2026-03-01#)))
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

