-- SqlCe
SELECT
	CAST(REPLICATE('0', 4 - LEN(CAST([j].[Value1] AS NVarChar(4)))) + CAST([j].[Value1] AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST([j].[Value1] AS NVarChar(2)))) + CAST([j].[Value1] AS NVarChar(2)) + '-' + REPLICATE('0', 2 - LEN(CAST([j].[Value1] AS NVarChar(2)))) + CAST([j].[Value1] AS NVarChar(2)) AS DateTime),
	CAST(REPLICATE('0', 4 - LEN(CAST([j].[Value1] AS NVarChar(4)))) + CAST([j].[Value1] AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST([j].[Value1] AS NVarChar(2)))) + CAST([j].[Value1] AS NVarChar(2)) + '-' + REPLICATE('0', 2 - LEN(CAST([j].[Value1] AS NVarChar(2)))) + CAST([j].[Value1] AS NVarChar(2)) AS DateTime)
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

