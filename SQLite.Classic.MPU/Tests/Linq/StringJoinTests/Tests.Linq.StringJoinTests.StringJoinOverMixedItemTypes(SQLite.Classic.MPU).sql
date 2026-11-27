-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[Value1] || ',' || Coalesce([e].[Name], '') || ',' || [e].[Id]
FROM
	[JoinProbeEntity] [e]

