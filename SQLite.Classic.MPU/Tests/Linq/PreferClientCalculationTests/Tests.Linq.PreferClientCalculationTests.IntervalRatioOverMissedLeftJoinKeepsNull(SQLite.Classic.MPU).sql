-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(CAST(Round((JulianDay([e].[Date2]) - JulianDay([e].[Date])) * 86400000) AS INTEGER) * 10000 AS Float) / CAST(CAST(Round((JulianDay([j].[Date2]) - JulianDay([j].[Date])) * 86400000) AS INTEGER) * 10000 AS Float)
FROM
	[MissedDivisorEntity] [e]
		LEFT JOIN [MissedDivisorEntity] [j] ON [j].[Id] = [e].[Id] + 1000

