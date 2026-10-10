-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[e].[Value1],
	CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)),
	Lower(substr(hex(Coalesce([j].[Key], X'00000000000000000000000000000000')), 7, 2) || substr(hex(Coalesce([j].[Key], X'00000000000000000000000000000000')), 5, 2) || substr(hex(Coalesce([j].[Key], X'00000000000000000000000000000000')), 3, 2) || substr(hex(Coalesce([j].[Key], X'00000000000000000000000000000000')), 1, 2) || '-' || substr(hex(Coalesce([j].[Key], X'00000000000000000000000000000000')), 11, 2) || substr(hex(Coalesce([j].[Key], X'00000000000000000000000000000000')), 9, 2) || '-' || substr(hex(Coalesce([j].[Key], X'00000000000000000000000000000000')), 15, 2) || substr(hex(Coalesce([j].[Key], X'00000000000000000000000000000000')), 13, 2) || '-' || substr(hex(Coalesce([j].[Key], X'00000000000000000000000000000000')), 17, 4) || '-' || substr(hex(Coalesce([j].[Key], X'00000000000000000000000000000000')), 21, 12)),
	CASE
		WHEN Coalesce([j].[Value1], 0) >= 5 THEN Coalesce([j].[Value1], 0)
		ELSE 5
	END,
	CASE
		WHEN Coalesce([j].[Value1], 0) <= -5 THEN Coalesce([j].[Value1], 0)
		ELSE -5
	END,
	CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)) || '!',
	Coalesce([j].[Name], '') || '!',
	strftime('%Y-%m-%d %H:%M:%f', Coalesce([j].[Date], '0001-01-01 00:00:00.000'), '10 Day'),
	CAST(strftime('%Y', strftime('%Y-%m-%d %H:%M:%f', Coalesce([j].[Date], '0001-01-01 00:00:00.000'), '10 Day')) AS INTEGER),
	CAST(strftime('%d', strftime('%Y-%m-%d %H:%M:%f', Coalesce([j].[Date], '0001-01-01 00:00:00.000'), '10 Day')) AS INTEGER)
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

