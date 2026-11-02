-- SqlServer.2008
SELECT
	CAST(CAST(RIGHT(N'0' + CAST([j].[Value1] AS VarChar(4)), 4) AS NVarChar(Max)) + N'-' + RIGHT(N'0' + CAST([j].[Value1] AS VarChar(2)), 2) + N'-' + RIGHT(N'0' + CAST([j].[Value1] AS VarChar(2)), 2) AS Date),
	CAST(CAST(RIGHT(N'0' + CAST([j].[Value1] AS VarChar(4)), 4) AS NVarChar(Max)) + N'-' + RIGHT(N'0' + CAST([j].[Value1] AS VarChar(2)), 2) + N'-' + RIGHT(N'0' + CAST([j].[Value1] AS VarChar(2)), 2) AS Date)
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

