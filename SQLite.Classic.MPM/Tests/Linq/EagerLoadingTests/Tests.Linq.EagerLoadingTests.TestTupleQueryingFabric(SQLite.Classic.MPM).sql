-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[q].[Id1],
	[q].[Id2],
	[q].[Value],
	[q].[ByteValues]
FROM
	[MasterClass] [q]
WHERE
	[q].[Id1] > 5 AND [q].[Id2] > 5

