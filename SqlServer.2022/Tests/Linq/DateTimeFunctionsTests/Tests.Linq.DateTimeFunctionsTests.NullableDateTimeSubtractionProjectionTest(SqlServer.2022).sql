-- SqlServer.2022

SELECT
	[t].[FinishedOn],
	[t].[StartedOn]
FROM
	[NullableDateTimeSubtractionTable] [t]
ORDER BY
	[t].[Id]

