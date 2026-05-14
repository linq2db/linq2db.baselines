-- SqlCe

SELECT TOP (1)
	[t1].[Max_1]
FROM
	[Outer] [o]
		OUTER APPLY (
			SELECT
				MAX([i].[IntValue]) as [Max_1]
			FROM
				[Inner] [i]
			WHERE
				[i].[Group] = [o].[Group]
		) [t1]
WHERE
	[o].[Id] = 1

