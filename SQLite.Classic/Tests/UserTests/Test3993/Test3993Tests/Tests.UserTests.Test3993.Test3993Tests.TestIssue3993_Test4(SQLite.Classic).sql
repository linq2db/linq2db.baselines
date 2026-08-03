-- SQLite.Classic SQLite
SELECT
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
	CAST(strftime('%H', [x].[StartDateTime]) AS INTEGER) = 13
LIMIT 1

