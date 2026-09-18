-- SqlServer.SA SqlServer.2019
SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	DatePart(day, Coalesce([t].[StrField], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7)))
FROM
	[Common_Topology_Locations] [t]

