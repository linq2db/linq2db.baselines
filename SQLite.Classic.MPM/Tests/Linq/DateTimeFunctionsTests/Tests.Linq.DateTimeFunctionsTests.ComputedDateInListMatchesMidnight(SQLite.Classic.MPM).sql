-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Coalesce([r].[ClosedOn], [r].[OpenedOn])) IN ('2026-06-01 00:00:00.000')

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Coalesce([r].[ClosedOn], [r].[OpenedOn])) IN ('2026-06-01 00:00:00.000')

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Date([r].[Value])) IN ('2026-06-01 00:00:00.000')

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Coalesce([r].[ClosedOn], [r].[OpenedOn])) IN ('2026-06-01 10:00:00.000')

