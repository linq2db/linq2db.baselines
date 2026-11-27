-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[ShiftedDateRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Plain]) = strftime('%Y-%m-%d %H:%M:%f', [r].[Date])

