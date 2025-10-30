BeforeExecute
-- SqlCe

SELECT
	[t2].[Id],
	[t1].[PersonsCount]
FROM
	[Issue3472TableDC] [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [PersonsCount]
			FROM
				[Person] [p]
			WHERE
				[p].[PersonID] = [t2].[Id]
		) [t1]

