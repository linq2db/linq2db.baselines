-- SqlCe

SELECT TOP (1)
	[t1].[Average]
FROM
	[Outer] [o]
		OUTER APPLY (
			SELECT
				AVG([i].[IntValue]) as [Average]
			FROM
				[Inner] [i]
			WHERE
				[i].[Group] = [o].[Group]
		) [t1]
WHERE
	[o].[Id] = 1

