-- SqlServer.2022

SELECT
	[t].[FinishedOn],
	[t].[StartedOn]
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

