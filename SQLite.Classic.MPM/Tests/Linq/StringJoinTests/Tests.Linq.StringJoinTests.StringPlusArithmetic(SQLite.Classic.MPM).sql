-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	Coalesce([e].[Name], '') || CAST([e].[Value1] + 1 AS NVarChar(11))
FROM
	[JoinProbeEntity] [e]

