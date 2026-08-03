-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST(ROUND((julianday([t].[FinishedOn]) - julianday([t].[StartedOn])) * 86400000) AS INTEGER) * 10000
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

