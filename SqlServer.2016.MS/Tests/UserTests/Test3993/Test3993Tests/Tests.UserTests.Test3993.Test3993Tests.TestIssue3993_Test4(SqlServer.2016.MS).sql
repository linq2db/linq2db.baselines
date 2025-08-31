BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	[x].[StartDateTime],
	[x].[StartDateTime2],
	[x].[EndDateTime],
	[x].[PreNotification],
	[x].[PreNotification2],
	[x].[PreNotification3],
	[x].[StrField],
	[x].[Status]
FROM
	[Common_Topology_Locations] [x]
WHERE
	DatePart(hour, [x].[StartDateTime]) = 13

