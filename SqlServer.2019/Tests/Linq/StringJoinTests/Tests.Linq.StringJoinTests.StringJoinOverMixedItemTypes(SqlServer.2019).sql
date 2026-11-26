-- SqlServer.2019
SELECT
	CONCAT_WS(N',', [e].[Value1], Coalesce([e].[Name], N''), [e].[Id])
FROM
	[JoinProbeEntity] [e]

