-- SqlServer.2022.MS SqlServer.2022
SELECT
	CONCAT_WS(N',', [e].[Value1], Coalesce([e].[Name], N''), [e].[Id])
FROM
	[JoinProbeEntity] [e]

