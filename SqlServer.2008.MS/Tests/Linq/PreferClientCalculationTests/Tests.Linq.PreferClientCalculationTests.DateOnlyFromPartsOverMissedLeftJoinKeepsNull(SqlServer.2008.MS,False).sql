-- SqlServer.2008.MS SqlServer.2008
SELECT
	CAST(RIGHT('0' + CAST([j].[Value1] AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([j].[Value1] AS VarChar(2)), 2) + '-' + RIGHT('0' + CAST([j].[Value1] AS VarChar(2)), 2) AS Date),
	CAST(RIGHT('0' + CAST([j].[Value1] AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([j].[Value1] AS VarChar(2)), 2) + '-' + RIGHT('0' + CAST([j].[Value1] AS VarChar(2)), 2) AS Date)
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

