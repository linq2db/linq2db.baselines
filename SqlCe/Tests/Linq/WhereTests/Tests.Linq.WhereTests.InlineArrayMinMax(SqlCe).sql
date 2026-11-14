-- SqlCe
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
		OUTER APPLY (
			SELECT
				MAX([t1].[item]) as [Max_1]
			FROM
				(
					SELECT [p].[PersonID] AS [item]
					UNION ALL
					SELECT 2 AS [item]) [t1]
		) [t2]
WHERE
	[t2].[Max_1] = 2

-- SqlCe
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
		OUTER APPLY (
			SELECT
				MIN([t1].[item]) as [Min_1]
			FROM
				(
					SELECT [p].[PersonID] AS [item]
					UNION ALL
					SELECT 2 AS [item]) [t1]
		) [t2]
WHERE
	[t2].[Min_1] = 2

