-- SqlCe

SELECT TOP (1)
	[t1].[Min_1]
FROM
	[Outer] [o]
		OUTER APPLY (
			SELECT
				MIN([i].[IntValue]) as [Min_1]
			FROM
				[Inner] [i]
			WHERE
				[i].[Group] = [o].[Group]
		) [t1]
WHERE
	[o].[Id] = 1

