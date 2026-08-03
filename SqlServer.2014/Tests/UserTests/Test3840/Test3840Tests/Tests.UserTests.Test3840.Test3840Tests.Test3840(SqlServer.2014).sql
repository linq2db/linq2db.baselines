-- SqlServer.2014
SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	DateAdd(millisecond, -CAST((CAST([t].[PreNotification] AS BigInt) - (CAST([t].[PreNotification] AS BigInt) % 10000)) / 10000 % 1000 AS Int), [t].[StartDateTime]),
	[t].[PreNotification2],
	[t].[PreNotification3],
	DatePart(day, [t].[StrField])
FROM
	[Common_Topology_Locations] [t]

