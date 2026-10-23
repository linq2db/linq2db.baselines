-- SqlServer.2005.MS SqlServer.2005
SELECT
	[e].[Date],
	CAST(RIGHT('0' + CAST([j].[Value1] AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([j].[Value1] AS VarChar(2)), 2) + '-' + RIGHT('0' + CAST([j].[Value1] AS VarChar(2)), 2) AS DateTime),
	CAST(RIGHT('0' + CAST([j].[Value1] AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([j].[Value1] AS VarChar(2)), 2) + '-' + RIGHT('0' + CAST([j].[Value1] AS VarChar(2)), 2) AS DateTime),
	CAST(RIGHT('0' + CAST(DatePart(year, [e].[Date]) AS VarChar(4)), 4) + N'-01-01 ' + RIGHT('0' + CAST(Coalesce([j].[Value1], 0) AS VarChar(2)), 2) + N':00:00.000' AS DateTime)
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

