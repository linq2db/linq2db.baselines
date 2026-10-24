-- SQLite.MS SQLite
SELECT
	[e].[Date],
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', [j].[Value1]) || '-' || printf('%02d', [j].[Value1]) || '-' || printf('%02d', [j].[Value1]) || ' 00:00:00.000'),
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', [j].[Value1]) || '-' || printf('%02d', [j].[Value1]) || '-' || printf('%02d', [j].[Value1]) || ' 00:00:00.000'),
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [e].[Date]) AS INTEGER)) || '-01-01 ' || printf('%02d', Coalesce([j].[Value1], 0)) || ':00:00.000')
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

