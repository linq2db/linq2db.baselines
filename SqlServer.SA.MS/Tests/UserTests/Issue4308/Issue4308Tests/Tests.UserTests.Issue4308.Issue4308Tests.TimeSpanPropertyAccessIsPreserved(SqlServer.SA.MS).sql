-- SqlServer.SA.MS SqlServer.2019
SELECT TOP (2)
	CAST(CAST([t].[PreNotification] AS BigInt) AS Float) / 10000,
	CAST(CAST([t].[PreNotification] AS BigInt) AS Float) / 10000000
FROM
	[Common_Topology_Locations] [t]
WHERE
	CAST(CAST([t].[PreNotification] AS BigInt) AS Float) / 10000000 < CAST(CAST([t].[PreNotification] AS BigInt) AS Float) / 10000

