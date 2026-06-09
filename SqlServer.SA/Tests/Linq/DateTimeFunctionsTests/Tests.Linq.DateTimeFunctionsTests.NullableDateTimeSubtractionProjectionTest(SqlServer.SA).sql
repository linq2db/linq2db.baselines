-- SqlServer.SA SqlServer.2019

SELECT
	[t].[FinishedOn],
	[t].[StartedOn]
FROM
	[NullableDateTimeSubtractionTable] [t]
ORDER BY
	[t].[Id]

