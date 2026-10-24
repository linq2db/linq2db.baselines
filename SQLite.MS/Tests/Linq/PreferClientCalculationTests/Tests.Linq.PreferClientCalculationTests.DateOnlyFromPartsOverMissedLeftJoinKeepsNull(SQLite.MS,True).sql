-- SQLite.MS SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', [j].[Value1]) || '-' || printf('%02d', [j].[Value1]) || '-' || printf('%02d', [j].[Value1]) || ' 00:00:00.000'),
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', [j].[Value1]) || '-' || printf('%02d', [j].[Value1]) || '-' || printf('%02d', [j].[Value1]) || ' 00:00:00.000')
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

