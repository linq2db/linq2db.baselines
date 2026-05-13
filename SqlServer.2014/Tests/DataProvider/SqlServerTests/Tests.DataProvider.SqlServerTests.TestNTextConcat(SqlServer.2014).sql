-- SqlServer.2014

SELECT
	[r].[Id],
	N'Element ' + CAST([r].[NText] AS NVarChar(Max)) + N' Text1',
	N'Element ' + Coalesce(CAST([r].[NTextNullable] AS NVarChar(Max)), N'') + N' Text2',
	N'Element ' + CAST([r].[NText] AS NVarChar(4000)) + N' Text3',
	N'Element ' + Coalesce(CAST([r].[NTextNullable] AS NVarChar(4000)), N'') + N' Text4'
FROM
	[NTextTable] [r]
ORDER BY
	[r].[Id]

