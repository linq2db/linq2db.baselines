-- Sybase.Managed Sybase
SELECT
	CAST([e].[Value1] AS VarChar(11)) || ',' || Coalesce([e].[Name], '') || ',' || CAST([e].[Id] AS VarChar(11))
FROM
	[JoinProbeEntity] [e]

