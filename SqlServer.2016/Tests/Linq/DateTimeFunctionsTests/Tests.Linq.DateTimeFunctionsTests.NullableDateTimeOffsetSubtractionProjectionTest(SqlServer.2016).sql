-- SqlServer.2016

SELECT
	[t].[FinishedOn],
	[t].[StartedOn]
FROM
	[NullableDtOffsetSub] [t]
ORDER BY
	[t].[Id]

