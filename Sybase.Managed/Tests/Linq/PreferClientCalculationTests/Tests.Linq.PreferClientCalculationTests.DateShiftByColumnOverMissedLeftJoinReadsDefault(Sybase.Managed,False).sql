-- Sybase.Managed Sybase
SELECT
	[e].[Value1],
	DateAdd(day, [e].[Value1], Coalesce([j].[Date], CAST('1753-01-01 00:00:00.000' AS DateTime))),
	DatePart(year, DateAdd(day, [e].[Value1], Coalesce([j].[Date], CAST('1753-01-01 00:00:00.000' AS DateTime)))),
	DatePart(day, DateAdd(day, [e].[Value1], Coalesce([j].[Date], CAST('1753-01-01 00:00:00.000' AS DateTime))))
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

