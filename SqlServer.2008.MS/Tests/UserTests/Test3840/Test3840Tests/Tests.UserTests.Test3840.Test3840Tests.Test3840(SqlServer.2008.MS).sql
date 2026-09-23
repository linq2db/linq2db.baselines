-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	DatePart(day, Coalesce([t].[StrField], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2)))
FROM
	[Common_Topology_Locations] [t]

