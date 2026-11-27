-- SqlServer.2016
SELECT
	CAST([e].[Value1] AS NVarChar(Max)) + N',' + Coalesce([e].[Name], N'') + N',' + CAST([e].[Id] AS VarChar(11))
FROM
	[JoinProbeEntity] [e]

