-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[FinishedOn],
	[t].[StartedOn]
FROM
	[NullableDateTimeSubtractionTable] [t]
ORDER BY
	[t].[Id]

