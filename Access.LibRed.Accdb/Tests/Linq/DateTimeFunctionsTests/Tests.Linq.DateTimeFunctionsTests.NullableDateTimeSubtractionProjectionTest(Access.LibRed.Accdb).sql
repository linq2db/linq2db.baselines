-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	(DateDiff_Big('d', [t].[StartedOn], [t].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [t].[StartedOn], [t].[FinishedOn]), [t].[StartedOn]), [t].[FinishedOn]) * 10000
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

