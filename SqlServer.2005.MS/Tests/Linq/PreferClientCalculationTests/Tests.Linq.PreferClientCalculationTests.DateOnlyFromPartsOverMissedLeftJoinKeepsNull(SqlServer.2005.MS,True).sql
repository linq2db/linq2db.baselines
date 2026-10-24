-- SqlServer.2005.MS SqlServer.2005
SELECT
	CAST(RIGHT('0' + CAST([j].[Value1] AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([j].[Value1] AS VarChar(2)), 2) + '-' + RIGHT('0' + CAST([j].[Value1] AS VarChar(2)), 2) AS DateTime),
	CAST(RIGHT('0' + CAST([j].[Value1] AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([j].[Value1] AS VarChar(2)), 2) + '-' + RIGHT('0' + CAST([j].[Value1] AS VarChar(2)), 2) AS DateTime)
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

