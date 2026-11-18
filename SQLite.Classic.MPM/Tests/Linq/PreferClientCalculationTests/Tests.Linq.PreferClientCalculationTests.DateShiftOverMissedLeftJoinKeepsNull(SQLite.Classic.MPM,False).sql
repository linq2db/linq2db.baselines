-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', [j].[Date], CAST(-[e].[Value1] AS NVarChar(11)) || ' Day'),
	strftime('%Y-%m-%d %H:%M:%f', [j].[Date], '-1 Day')
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

