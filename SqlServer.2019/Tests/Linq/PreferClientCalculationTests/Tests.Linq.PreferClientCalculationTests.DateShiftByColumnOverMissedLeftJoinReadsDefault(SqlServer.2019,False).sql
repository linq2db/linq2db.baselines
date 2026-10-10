-- SqlServer.2019
SELECT
	[e].[Value1],
	DateAdd(day, [e].[Value1], Coalesce([j].[Date], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))),
	DatePart(year, DateAdd(day, [e].[Value1], Coalesce([j].[Date], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7)))),
	DatePart(day, DateAdd(day, [e].[Value1], Coalesce([j].[Date], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))))
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

