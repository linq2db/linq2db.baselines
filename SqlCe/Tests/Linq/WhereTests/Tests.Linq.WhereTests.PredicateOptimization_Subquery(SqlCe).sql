BeforeExecute
-- SqlCe

SELECT
	[p].[Id],
	[p].[Date1],
	[p].[Date2],
	[p].[Date3],
	[p].[Date4]
FROM
	[WithMultipleDates] [p]
		OUTER APPLY (
			SELECT
				MAX([t1].[item]) as [MAX_1]
			FROM
				(
					SELECT [p].[Date1] AS [item]
					UNION ALL
					SELECT [p].[Date2] AS [item]
					UNION ALL
					SELECT [p].[Date3] AS [item]
					UNION ALL
					SELECT [p].[Date4] AS [item]) [t1]
		) [t2]
WHERE
	[t2].[MAX_1] > '2023-01-01'

BeforeExecute
-- SqlCe

SELECT
	[p].[Id],
	[p].[Date1],
	[p].[Date2],
	[p].[Date3],
	[p].[Date4]
FROM
	[WithMultipleDates] [p]
		OUTER APPLY (
			SELECT
				MAX([t1].[item]) as [MAX_1]
			FROM
				(
					SELECT [p].[Date1] AS [item]
					UNION ALL
					SELECT [p].[Date2] AS [item]
					UNION ALL
					SELECT [p].[Date3] AS [item]
					UNION ALL
					SELECT [p].[Date4] AS [item]) [t1]
		) [t2]
WHERE
	[t2].[MAX_1] <= [p].[Date1] OR [t2].[MAX_1] IS NULL OR
	[p].[Date1] IS NULL

