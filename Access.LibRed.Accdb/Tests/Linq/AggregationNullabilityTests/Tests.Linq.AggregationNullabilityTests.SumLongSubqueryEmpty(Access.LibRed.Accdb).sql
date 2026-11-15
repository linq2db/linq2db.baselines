-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	1000 - CASE
		WHEN [t1].[Sum_1] IS NULL THEN 0
		ELSE [t1].[Sum_1]
	END
FROM
	[Outer] [o]
		OUTER APPLY (
			SELECT
				SUM([i].[LongValue]) as [Sum_1]
			FROM
				[Inner] [i]
			WHERE
				[i].[Group] = [o].[Group]
		) [t1]
WHERE
	[o].[Id] = 2

