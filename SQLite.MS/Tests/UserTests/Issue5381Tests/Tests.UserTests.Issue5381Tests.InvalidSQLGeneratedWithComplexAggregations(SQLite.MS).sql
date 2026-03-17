-- SQLite.MS SQLite

SELECT
	[t].[Year],
	[a].[Count_1]
FROM
	(
		SELECT
			MIN([grouping_1].[Year]) as [MinYear],
			MAX([grouping_1].[Year]) as [MaxYear],
			COUNT(*) as [Count_1]
		FROM
			[DateRanges] [grouping_1]
	) [a]
		INNER JOIN [SmallerDateRanges] [t] ON [a].[MinYear] <= [t].[Year] AND [a].[MaxYear] >= [t].[Year]

-- SQLite.MS SQLite

SELECT
	[t1].[Year]
FROM
	[DateRanges] [t1]

-- SQLite.MS SQLite

SELECT
	[t1].[Year]
FROM
	[SmallerDateRanges] [t1]

