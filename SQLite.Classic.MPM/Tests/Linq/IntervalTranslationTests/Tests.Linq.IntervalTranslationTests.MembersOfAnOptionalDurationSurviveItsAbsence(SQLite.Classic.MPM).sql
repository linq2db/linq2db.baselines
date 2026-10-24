-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id],
	CAST(([r].[Grace] / 60) % 60 AS INTEGER),
	CAST([r].[Grace] AS Float) / 60,
	CAST([r].[Required] AS Float) / 60
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

