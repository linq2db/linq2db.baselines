-- SqlCe

SELECT TOP (1)
	[o].[Anchor] - Coalesce([t1].[Sum_1], 0) as [c1]
FROM
	[Outer] [o]
		OUTER APPLY (
			SELECT
				SUM([i].[DecimalValue]) as [Sum_1]
			FROM
				[Inner] [i]
			WHERE
				[i].[Group] = [o].[Group]
		) [t1]
WHERE
	[o].[Id] = 2

