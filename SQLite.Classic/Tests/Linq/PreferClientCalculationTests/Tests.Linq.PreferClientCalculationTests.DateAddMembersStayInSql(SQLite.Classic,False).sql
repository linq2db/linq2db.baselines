-- SQLite.Classic SQLite
SELECT
	[e].[Id],
	strftime('%Y-%m-%d %H:%M:%f', [e].[Date], CAST([e].[Num] AS NVarChar(11)) || ' Day'),
	strftime('%Y-%m-%d %H:%M:%f', [e].[Date], CAST([e].[Num] AS NVarChar(11)) || ' Hour')
FROM
	[BatchCalcEntity] [e]

