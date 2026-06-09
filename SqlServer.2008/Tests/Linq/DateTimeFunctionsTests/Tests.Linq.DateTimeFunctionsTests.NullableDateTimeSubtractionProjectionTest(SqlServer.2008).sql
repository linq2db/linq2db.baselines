-- SqlServer.2008

SELECT
	[t].[FinishedOn],
	[t].[StartedOn]
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

