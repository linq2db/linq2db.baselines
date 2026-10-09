-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[e].[Value1],
	strftime('%Y-%m-%d %H:%M:%f', Coalesce([j].[Date], '0001-01-01 00:00:00.000'), CAST([e].[Value1] AS NVarChar(11)) || ' Day'),
	CAST(strftime('%Y', strftime('%Y-%m-%d %H:%M:%f', Coalesce([j].[Date], '0001-01-01 00:00:00.000'), CAST([e].[Value1] AS NVarChar(11)) || ' Day')) AS INTEGER),
	CAST(strftime('%d', strftime('%Y-%m-%d %H:%M:%f', Coalesce([j].[Date], '0001-01-01 00:00:00.000'), CAST([e].[Value1] AS NVarChar(11)) || ' Day')) AS INTEGER)
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

