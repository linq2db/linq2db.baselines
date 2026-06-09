-- SqlServer.2014

SELECT
	[t].[FinishedOn],
	[t].[StartedOn]
FROM
	[NullableDateTimeSubtractionTable] [t]
ORDER BY
	[t].[Id]

