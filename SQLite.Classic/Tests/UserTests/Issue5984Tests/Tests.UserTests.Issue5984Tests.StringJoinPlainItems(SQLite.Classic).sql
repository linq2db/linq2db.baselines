-- SQLite.Classic SQLite
SELECT
	[e].[Value1] || ',' || [e].[Id] || ',' || Coalesce(Upper([e].[Name]), '') || ',' || Coalesce([e].[Name], '') || '-' || CAST([e].[Id] AS NVarChar(11)) || ',' || -[e].[Value1]
FROM
	[JoinProbeEntity] [e]

