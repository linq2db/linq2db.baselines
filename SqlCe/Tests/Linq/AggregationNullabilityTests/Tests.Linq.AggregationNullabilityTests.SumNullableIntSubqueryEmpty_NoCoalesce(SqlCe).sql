-- SqlCe

SELECT TOP (1)
	[t1].[Sum_1]
FROM
	[Outer] [o]
		OUTER APPLY (
			SELECT
				SUM([i].[IntValueN]) as [Sum_1]
			FROM
				[Inner] [i]
			WHERE
				[i].[Group] = [o].[Group]
		) [t1]
WHERE
	[o].[Id] = 2

