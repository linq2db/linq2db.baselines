BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	DatePart(day, [t].[StrField])
FROM
	[Common_Topology_Locations] [t]

