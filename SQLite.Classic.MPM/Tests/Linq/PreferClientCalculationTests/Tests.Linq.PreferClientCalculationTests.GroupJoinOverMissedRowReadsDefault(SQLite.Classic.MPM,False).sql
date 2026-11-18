-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[e].[Id],
	CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)),
	Coalesce([j].[Value1], 0) + 1
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [e].[Id] + 1000 = [j].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Key],
	[t1].[Name]
FROM
	[TranslatedMemberEntity] [t1]

