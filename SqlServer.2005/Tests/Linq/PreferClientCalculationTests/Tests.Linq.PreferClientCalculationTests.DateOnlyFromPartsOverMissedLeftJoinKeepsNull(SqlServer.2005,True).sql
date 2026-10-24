-- SqlServer.2005
SELECT
	CAST(RIGHT(N'0' + CAST([j].[Value1] AS VarChar(4)), 4) + N'-' + RIGHT(N'0' + CAST([j].[Value1] AS VarChar(2)), 2) + N'-' + RIGHT(N'0' + CAST([j].[Value1] AS VarChar(2)), 2) AS DateTime),
	CAST(RIGHT(N'0' + CAST([j].[Value1] AS VarChar(4)), 4) + N'-' + RIGHT(N'0' + CAST([j].[Value1] AS VarChar(2)), 2) + N'-' + RIGHT(N'0' + CAST([j].[Value1] AS VarChar(2)), 2) AS DateTime)
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

