-- SqlCe
SELECT
	CAST([e].[Value1] AS NVarChar(11)) + ',' + Coalesce([e].[Name], '') + ',' + CAST([e].[Id] AS NVarChar(11))
FROM
	[JoinProbeEntity] [e]

