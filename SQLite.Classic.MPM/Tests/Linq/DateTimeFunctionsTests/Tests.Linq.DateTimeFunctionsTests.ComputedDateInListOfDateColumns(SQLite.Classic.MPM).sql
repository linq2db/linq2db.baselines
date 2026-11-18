-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Coalesce([r].[ClosedOn], [r].[OpenedOn])) IN (strftime('%Y-%m-%d %H:%M:%f', [r].[OpenedOn]))

