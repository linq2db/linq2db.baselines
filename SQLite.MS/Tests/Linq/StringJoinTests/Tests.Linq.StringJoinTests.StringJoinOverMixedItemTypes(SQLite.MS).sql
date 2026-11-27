-- SQLite.MS SQLite
SELECT
	[e].[Value1] || ',' || Coalesce([e].[Name], '') || ',' || [e].[Id]
FROM
	[JoinProbeEntity] [e]

