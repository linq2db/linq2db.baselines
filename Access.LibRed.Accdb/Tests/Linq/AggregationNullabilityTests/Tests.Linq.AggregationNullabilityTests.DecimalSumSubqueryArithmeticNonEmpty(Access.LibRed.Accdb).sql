-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[o].[Anchor] - CASE
		WHEN [t1].[Sum_1] IS NULL THEN 0
		ELSE [t1].[Sum_1]
	END
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
	[o].[Id] = 1

