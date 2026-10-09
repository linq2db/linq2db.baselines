-- SqlServer.2005
SELECT
	[e].[Value1],
	DateAdd(day, [e].[Value1], Coalesce([j].[Date], CAST('1753-01-01T00:00:00.000' AS DATETIME))),
	DatePart(year, DateAdd(day, [e].[Value1], Coalesce([j].[Date], CAST('1753-01-01T00:00:00.000' AS DATETIME)))),
	DatePart(day, DateAdd(day, [e].[Value1], Coalesce([j].[Date], CAST('1753-01-01T00:00:00.000' AS DATETIME))))
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

