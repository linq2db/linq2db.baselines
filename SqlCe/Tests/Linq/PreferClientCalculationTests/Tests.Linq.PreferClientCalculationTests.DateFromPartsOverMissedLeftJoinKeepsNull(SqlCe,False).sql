-- SqlCe
SELECT
	[e].[Date],
	CAST(REPLICATE('0', 4 - LEN(CAST([j].[Value1] AS NVarChar(4)))) + CAST([j].[Value1] AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST([j].[Value1] AS NVarChar(2)))) + CAST([j].[Value1] AS NVarChar(2)) + '-' + REPLICATE('0', 2 - LEN(CAST([j].[Value1] AS NVarChar(2)))) + CAST([j].[Value1] AS NVarChar(2)) AS DateTime),
	CAST(REPLICATE('0', 4 - LEN(CAST([j].[Value1] AS NVarChar(4)))) + CAST([j].[Value1] AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST([j].[Value1] AS NVarChar(2)))) + CAST([j].[Value1] AS NVarChar(2)) + '-' + REPLICATE('0', 2 - LEN(CAST([j].[Value1] AS NVarChar(2)))) + CAST([j].[Value1] AS NVarChar(2)) AS DateTime),
	CAST(REPLICATE('0', 4 - LEN(CAST(DatePart(year, [e].[Date]) AS NVarChar(4)))) + CAST(DatePart(year, [e].[Date]) AS NVarChar(4)) + '-01-01 ' + REPLICATE('0', 2 - LEN(CAST(Coalesce([j].[Value1], 0) AS NVarChar(2)))) + CAST(Coalesce([j].[Value1], 0) AS NVarChar(2)) + ':00:00.000' AS DateTime)
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

