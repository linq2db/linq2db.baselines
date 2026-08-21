-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(Round((JulianDay([t].[FinishedOn]) - JulianDay([t].[StartedOn])) * 86400000) AS INTEGER) * 10000
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

