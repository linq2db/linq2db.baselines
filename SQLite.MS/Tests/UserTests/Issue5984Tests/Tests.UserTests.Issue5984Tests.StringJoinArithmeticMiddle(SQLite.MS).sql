-- SQLite.MS SQLite
SELECT
	[e].[Id] || ',' || ([e].[Value1] - 3) || ',' || [e].[Id]
FROM
	[JoinProbeEntity] [e]

