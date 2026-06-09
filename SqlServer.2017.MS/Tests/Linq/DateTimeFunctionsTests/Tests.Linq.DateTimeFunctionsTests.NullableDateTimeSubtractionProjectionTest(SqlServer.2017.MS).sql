-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[FinishedOn],
	[t].[StartedOn]
FROM
	[NullableDateTimeSubtractionTable] [t]
ORDER BY
	[t].[Id]

