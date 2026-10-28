-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[e].[Value1],
	CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)),
	Lower(CAST(Coalesce([j].[Key], '00000000-0000-0000-0000-000000000000') AS Char(36))),
	IIF(Coalesce([j].[Value1], 0) >= 5, Coalesce([j].[Value1], 0), 5),
	IIF(Coalesce([j].[Value1], 0) <= -5, Coalesce([j].[Value1], 0), -5),
	CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)) + N'!',
	Coalesce([j].[Name], N'') + N'!',
	DateAdd(day, 10, [j].[Date]),
	DatePart(year, DateAdd(day, 10, [j].[Date])),
	DatePart(day, DateAdd(day, 10, [j].[Date]))
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

