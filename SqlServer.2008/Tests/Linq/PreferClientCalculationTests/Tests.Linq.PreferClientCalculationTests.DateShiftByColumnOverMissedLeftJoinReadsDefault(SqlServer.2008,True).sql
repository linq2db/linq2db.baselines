-- SqlServer.2008
SELECT
	[e].[Value1],
	DateAdd(day, [e].[Value1], Coalesce([j].[Date], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2))),
	DatePart(year, DateAdd(day, [e].[Value1], Coalesce([j].[Date], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)))),
	DatePart(day, DateAdd(day, [e].[Value1], Coalesce([j].[Date], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2))))
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

