-- Sybase.Managed Sybase

SELECT
	[t].[FinishedOn],
	[t].[StartedOn]
FROM
	NullableDateTimeSubtractionTable [t]
ORDER BY
	[t].[Id]

